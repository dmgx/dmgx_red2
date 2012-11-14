class CreatePunches < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
