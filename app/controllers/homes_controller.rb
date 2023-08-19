class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    return unless user_signed_in?

    redirect_to categories_path
  end

  def profile
    @user = current_user
  end
end
