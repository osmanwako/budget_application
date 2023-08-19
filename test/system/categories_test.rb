require 'application_system_test_case'

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @current_user = users(:user_one)
    @category_one = categories(:category_one)
    @category_two = categories(:category_two)
    sign_in(@current_user)
    visit categories_path
  end

  test 'Testing Categories Page static Contents' do
    assert_selector 'a', text: 'CATEGORIES'
    assert_selector 'p', text: 'Budget Categories'
    assert_selector 'a', text: 'ADD CATEGORY'
  end

  test 'Testing Categories Page Dynamic Contents' do
    assert_selector 'strong', text: @category_one.name
    assert_selector 'strong', text: @category_one.name
    assert_selector 'small', text: @category_one.created_at.strftime('%d %B %Y')
  end
  test 'Testing Categories Page Link response' do
    click_on 'ADD CATEGORY'
    assert_selector 'p', text: 'Register Category'
    fill_in 'Category Name', with: 'category three'
    find('label[for="category-icon"]').click
    assert_selector 'strong', text: 'Category Three'
  end

  test 'Testing navigation from categories to transaction' do
    click_on @category_one.name
    assert_selector 'a', text: 'Transactions'
  end
end
