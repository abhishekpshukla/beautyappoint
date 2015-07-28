class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :name
      t.text :description
      t.date :established_on
      t.time :start_at
      t.time :close_at
      t.string :lunch_hour

      t.timestamps
    end
  end
end
