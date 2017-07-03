require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :style }
  it { should validate_presence_of :price }
  it { should have_many :reviews }
end
