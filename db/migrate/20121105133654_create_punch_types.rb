class CreatePunchTypes < ActiveRecord::Migration
  def change
    create_table :punch_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
