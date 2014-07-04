class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.references :month, index: true
      t.date :date
      t.decimal :hours
      t.text :remarks
      t.integer :mileage

      t.timestamps
    end
  end
end
