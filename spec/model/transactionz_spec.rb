require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Transaction should not be saved without name' do
    transactionz = Transactionz.new(name: 'Purchase Inventory', amount: 765.98, author_id: 1, category_id: 1)
    expect(transactionz).to_not be_valid
  end

  it 'Transaction should not be saved without amount' do
    transactionz = Transactionz.new(name: '', author_id: 1, category_id: 1)
    expect(transactionz).to_not be_valid
  end

  it 'Transaction should not be saved without author_id' do
    transactionz = Transactionz.new(name: 'Purchase Inventory', amount: 987.98, author_id: 1, category_id: 1)
    expect(transactionz).to_not be_valid
  end

  it 'Transaction should not be saved without category_id' do
    transactionz = Transactionz.new(name: 'Purchase Inventory', amount: 987.98, author_id: 1, category_id: 1)
    expect(transactionz).to_not be_valid
  end
end
