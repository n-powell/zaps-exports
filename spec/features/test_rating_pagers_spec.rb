require 'rails_helper'

Review.destroy_all

describe "the add a review test" do

  it "gives an error if product rating is not 1 - 5" do
    visit products_path
    click_on 'Add New Product'
    fill_in 'Name', :with => 'Zebraz'
    fill_in 'Style', :with => 'beverage'
    fill_in 'Price', :with => '2.50'
    fill_in 'From', :with => 'USA'
    click_on 'Create Product'
    within(:css, "div.full-list") do
      click_on 'Zebraz'
    end
    click_on 'Add a review'
    click_on 'Create Review'
    fill_in 'Name', :with => 'John'
    fill_in 'Comment', :with => 'This is a very fantastic product. I would absulutely recommend this to anyone who asks.'
    fill_in 'Rating', :with => '10'
    expect(page).to have_content 'errors'
  end
end
