class ChangeDeadlineTypeToDate < ActiveRecord::Migration[6.0]
  def up
     change_table :tasks do |t|
       t.change :deadline, :time
     end
   end

   def down
     change_table :tasks do |t|
       t.change :deadline, :datetame
     end
   end
end
