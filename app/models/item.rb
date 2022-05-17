class Item < ApplicationRecord

  has_many :itemwarehouses

  validates_presence_of :name
  validates_presence_of :price 
end
