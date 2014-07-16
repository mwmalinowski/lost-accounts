class CreateTracings < ActiveRecord::Migration
  def change
    create_table :tracings do |t|
      t.string :record_id
      t.string :dist_id
      t.string :inside
      t.string :shipto
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :add4
      t.string :city
      t.string :st
      t.string :prod_type
      t.string :contract
      t.string :prod_no
      t.string :description
      t.string :qty
      t.string :ext_amnt
      t.string :inv_date
      t.string :sklar_id

      t.timestamps
    end
  end
end
