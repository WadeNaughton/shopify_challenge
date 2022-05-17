class Itemwarehouse < ApplicationRecord
  belongs_to :item
  belongs_to :warehouse

  validates_presence_of :item_id
  validates_presence_of :warehouse_id
end
