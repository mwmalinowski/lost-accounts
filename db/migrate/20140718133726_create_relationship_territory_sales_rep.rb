class CreateRelationshipTerritorySalesRep < ActiveRecord::Migration
  def change
    add_column :territories, :territory_id, :integer
  end
end
