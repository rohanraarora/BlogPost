class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: [:profile]

  def index
    @user = User.new
  end

  def profile
    @user = current_user
  end
end
