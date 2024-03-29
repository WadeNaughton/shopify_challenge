require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it {should have_many(:itemwarehouses)}
  end
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:price)}
  end
end
