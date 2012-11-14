class AddNotesToPunch < ActiveRecord::Migration
  def change
    add_column :punches, :notes, :text
  end
end
