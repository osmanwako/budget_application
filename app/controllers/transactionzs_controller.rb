class TransactionzsController < ApplicationController
  def index; end

  def show
    @category = Category.includes(:transactionzs).find_by(id: params[:category_id])
    redirect_to categories_path, alert: 'Category not found.' if @category.nil?
    @transactionz = @category.transactionzs.find_by(id: params[:id])
    return unless @transactionz.nil?

    redirect_to category_path(@category), alert: 'Transaction not found.'
  end

  def create
    @category = Category.find_by(id: params[:category_id])
    redirect_to categories_path, alert: 'Category not found.' if @category.nil?
    @transactionz = Transactionz.create(transactionz_params)

    respond_to do |format|
      if @transactionz.save
        format.html do
          redirect_to category_path(@category), notice: 'Transaction was successfully created.'
        end
      else
        format.html { redirect_to new_category_transactionz_path(@category), alert: 'Failed to create transaction.' }
      end
    end
  end

  def new
    @category = Category.find_by(id: params[:category_id])
    str = 'This transaction is for healthcare. '
    redirect_to categories_path, alert: 'Category not found.' if @category.nil?
    @transactionz = Transactionz.new(name: '', amount: '', description: str)
  end

  private

  def transactionz_params
    params.require(:transactionz).permit(:name, :amount, :description, :logo,
                                         :category_id).merge(author_id: current_user.id)
  end
end
