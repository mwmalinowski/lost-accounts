class LostAccount < ActiveRecord::Base
  belongs_to :sales_rep
  has_many :tracings
end
