class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:user, :transactionzs).where(user: current_user).order(created_at: :desc)
  end

  def new
    @category = Category.new(name: "")
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_category_path, notice: "Category was successfully registered."
    else
      redirect_to new_category_path, alert: "Failed to register category."
    end
  end

  def show
    @category = Category.includes(:transactionzs).find_by(id: params[:id])
    if @category.nil?
      redirect_to categories_path, alert: "Category not found."
    end
    @transactionzs = []
    unless @category.nil?
      @transactionzs = @category.transactionzs.order(created_at: :desc)
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :image).merge(user_id: current_user.id)
  end
end
