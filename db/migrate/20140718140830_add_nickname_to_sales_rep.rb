class AddNicknameToSalesRep < ActiveRecord::Migration
  def change
    add_column :sales_reps, :nickname, :string
  end
end
