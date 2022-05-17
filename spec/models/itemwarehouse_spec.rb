require 'rails_helper'

RSpec.describe Itemwarehouse, type: :model do
  describe 'relationships' do
    it { should belong_to(:item)}
    it { should belong_to(:warehouse)}
  end
  describe 'validations' do
    it {should validate_presence_of(:item_id)}
    it {should validate_presence_of(:warehouse_id)}
  end
end
