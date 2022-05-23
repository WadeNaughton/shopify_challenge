class Warehouse < ApplicationRecord
has_many :itemwarehouses, dependent: :delete_all
has_many :items, through: :itemwarehouses

validates_presence_of :name
validates_presence_of :state
end
