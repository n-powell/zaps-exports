require 'rails_helper'

Product.destroy_all

describe "the edit a product test" do

  it 'edits a product' do
    task = FactoryGirl.create(:product)
    visit products_path
    within(:css, "div.full-list") do
      click_on 'Loopey'
    end
    click_on 'Edit'
    fill_in 'Name', :with => 'Lilly'
    fill_in 'Style', :with => 'Spice'
    fill_in 'Price', :with => '3'
    fill_in 'From', :with => 'Brasil'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated!'
  end
end
