class CreateWorklogs < ActiveRecord::Migration[8.1]
  def change
    create_table :worklogs do |t|
      t.date :date
      t.decimal :hours
      t.string :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
