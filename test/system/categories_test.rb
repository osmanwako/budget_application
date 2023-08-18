require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @current_user = users(:user_one)
    sign_in(@current_user)
  end

  test 'Testing User Log In Success' do
    visit root_path
  end

  test 'Testing header Page' do
    visit categories_path
    assert_selector 'a', text: 'Budget Categories'
  end
end
