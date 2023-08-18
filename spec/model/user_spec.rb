require 'rails_helper'

RSpec.describe User, type: :model do
  it 'User should not be saved without Email' do
    user = User.new(name: 'Osman Wako', email: '', password: '123456')
    expect(user).to_not be_valid
  end

  it 'User should not be saved without name' do
    user = User.new(name: '', email: 'osman@gmail.com', password: '123456')
    expect(user).to_not be_valid
  end
  it 'User should not be saved without Password' do
    user = User.new(name: 'Osman Wako', email: 'osman@test.com')
    expect(user).to_not be_valid
  end

  it 'User should be saved with valid name,email,and password' do
    user = User.new(name: 'Osman Wako', email: 'osman@test.com', password: '127336')
    expect(user).to be_valid
  end
end
