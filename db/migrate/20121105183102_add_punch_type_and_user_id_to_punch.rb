class AddPunchTypeAndUserIdToPunch < ActiveRecord::Migration
  def change
    add_column :punches, :punch_type_id, :integer
    add_column :punches, :user_id, :integer
  end
end
