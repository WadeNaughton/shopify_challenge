require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  describe 'relationships' do
    it {should have_many(:itemwarehouses)}
  end
  describe 'validations' do
    it {should validate_presence_of(:name)}
  end
end
