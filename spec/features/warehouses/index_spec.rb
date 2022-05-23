require 'rails_helper'

RSpec.describe "Warehouse index page" do
  it "has link to items page" do
    visit("/warehouses")

    expect(page).to have_link("Items")
    click_link("Items")
    expect(current_path).to eq("/items")
  end

  it "has link to create warehouse" do
    visit("/warehouses")

    expect(page).to have_link("Create Warehouse")
    click_link("Create Warehouse")
    expect(current_path).to eq("/warehouses/new")
  end
end
