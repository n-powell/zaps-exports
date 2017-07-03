require 'rails_helper'

Product.destroy_all

describe "the add a product test" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Zebra'
    fill_in 'Style', :with => 'beverage'
    fill_in 'Price', :with => '2.50'
    fill_in 'From', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it 'is private by default' do
    task = FactoryGirl.create(:product)
    visit products_path
    expect(page).to have_content 'Loopey'
  end
end
