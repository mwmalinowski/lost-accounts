class RemoveTypeFromTerritories < ActiveRecord::Migration
  def change
    remove_column :territories, :type, :string
  end
end
