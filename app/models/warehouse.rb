class Warehouse < ApplicationRecord
has_many :itemwarehouses

validates_presence_of :name
end
