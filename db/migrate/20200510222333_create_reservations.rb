class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :gender,null: false
      t.string :cut,null: false
      t.string :pama,null: false
      t.string :color,null: false
      t.integer :month,null: false
      t.integer :day,null: false
      t.integer :hour,null: false
      t.integer :minute,null: false
      t.integer :price
      t.references :user,null: false, foreign_key: true
      t.references :salon,null: false, foreign_key: true
      t.timestamps
    end
  end
end
