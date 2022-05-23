require 'rails_helper'

RSpec.describe 'welcome page' do
  it "shows links" do
    visit "/"
    expect(page).to have_link("Home")
    click_link("Home")
    expect(current_path).to eq("/")

    expect(page).to have_link("Warehouses")
    click_link("Warehouses")
    expect(current_path).to eq("/warehouses")
    click_link("Home")

    expect(page).to have_link("Items")
    click_link("Items")
    expect(current_path).to eq("/items")
  end
end
