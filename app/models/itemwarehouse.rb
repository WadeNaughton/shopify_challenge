class Itemwarehouse < ApplicationRecord
  belongs_to :item
  belongs_to :warehouse
end
