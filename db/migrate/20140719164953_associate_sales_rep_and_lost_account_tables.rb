class AssociateSalesRepAndLostAccountTables < ActiveRecord::Migration
  def change
    add_column :lost_accounts, :sales_rep_id, :integer
  end
end
