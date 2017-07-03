require 'rails_helper'

describe "the add a product test" do
  it "adds a new product" do
    visit products_path
    click_on 'Add New Product'
    fill_in 'Name', :with => 'Zebraz'
    fill_in 'Style', :with => 'beverage'
    fill_in 'Price', :with => '2.50'
    click_on 'Create Product'
    within(:css, "div.full-list") do
      click_on 'Zebraz'
    end
    click_on 'Delete'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it "gives error when no price is entered" do
    visit new_product_path
    fill_in 'Name', :with => 'Pizza'
    fill_in 'Style', :with => 'Beverage'
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it "gives error when no style is entered" do
    visit new_product_path
    fill_in 'Name', :with => 'Pizza'
    fill_in 'Price', :with => '2.50'
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
