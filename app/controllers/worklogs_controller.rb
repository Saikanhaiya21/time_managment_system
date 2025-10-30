class WorklogsController < ApplicationController
  before_action :set_worklog, only: [:show, :edit, :update, :destroy]

  def index
    @worklogs = Worklog.order(date: :desc, created_at: :desc)
    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @worklogs = @worklogs.where(data: start_date..end_date)
    end

    @worklogs = @worklogs.group_by { |w| [w.user_id, w.date] }.map { |_, wl| wl.first }
  end

  def show
  end

  def edit
  end

  def new
    @worklog = Worklog.new
  end

  def create
    @worklog = Worklog.new(worklog_params)

    if @worklog.save
      redirect_to @worklog
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @worklog.update(worklog_params)
      redirect_to @worklog
    else
      render :edit
    end
  end

  def destroy
    @worklog.destroy
    redirect_to worklogs_url
  end

  private
    def set_worklog
      @user = Worklog.find(params[:id])
    end

    def worklog_params
      params.require(:worklogs).permit(:user_id, :date, :hours, :note)
    end
end
