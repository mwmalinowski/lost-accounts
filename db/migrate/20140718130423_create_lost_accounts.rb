class CreateLostAccounts < ActiveRecord::Migration
  def change
    create_table :lost_accounts do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
