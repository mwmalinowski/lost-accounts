class AssociateSalesRepAndTracingTables < ActiveRecord::Migration
  def change
    add_column :tracings, :sales_rep_id, :integer
  end
end
