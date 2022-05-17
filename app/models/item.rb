class Item < ApplicationRecord

  has_many :itemwarehouses, dependent: :delete_all
  has_many :warehouses, through: :itemwarehouses

  validates_presence_of :name
  validates_presence_of :price
end
