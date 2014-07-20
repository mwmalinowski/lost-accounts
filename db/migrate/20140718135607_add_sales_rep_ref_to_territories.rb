class AddSalesRepRefToTerritories < ActiveRecord::Migration
  def change
    add_reference :territories, :sales_rep, index: true
  end
end
