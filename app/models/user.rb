class User < ApplicationRecord
    has_many :worklogs
    validates :name, presence: true
    validates :preferred_working_hour_per_day, presence: true
end
