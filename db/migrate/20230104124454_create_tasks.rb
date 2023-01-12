class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :period, default: 0
      t.integer :status, default: 0
      t.date :deadline
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
