class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if user_signed_in?
      redirect_to categories_path
    end
  end

  def profile
    @user = current_user
  end
end
