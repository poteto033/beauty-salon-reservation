class CreateSalons < ActiveRecord::Migration[5.1]
  def change
    create_table :salons do |t|
      t.string :name,null: false
      t.string :postcode,null: false
      t.string :prefecture,null: false
      t.string :city,null: false
      t.string :block,null: false
      t.string :building
      t.string :phone_number,null: false
      t.timestamps
    end
  end
end
