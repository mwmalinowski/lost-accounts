class CreateSalesReps < ActiveRecord::Migration
  def change
    create_table :sales_reps do |t|
      t.string :name
      t.string :nickname

      t.timestamps
    end
  end
end
