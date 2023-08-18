require 'application_system_test_case'

class TransactionzsTest < ApplicationSystemTestCase
  setup do
    @current_user = users(:user_one)
    @category_one = categories(:category_one)
    @category_two = categories(:category_two)
    sign_in(@current_user)
    visit category_path(@category_one)
  end

  test 'Testing Categories Page static Contents' do
    assert_selector 'a', text: 'Transactions'
    assert_selector 'a', text: 'ADD TRANSACTION'
  end
end
