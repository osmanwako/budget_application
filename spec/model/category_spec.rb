require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'Category should not be saved without name' do
    category = Category.new(name: '', user_id: 1)
    expect(category).to_not be_valid
  end

  it 'Category should not be saved without user_id' do
    category = Category.new(name: 'Purchase invoice')
    expect(category).to_not be_valid
  end
end
