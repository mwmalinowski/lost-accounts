class SalesRep < ActiveRecord::Base
  has_many :territories
  has_many :lost_accounts
  has_many :tracings
end
