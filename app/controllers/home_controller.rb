class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all
    set_user_column
  end

  def new
  end

  def create
  end

  def search
    @results = @p.result.includes(:question)
  end

  private

  def search_user
    @p = User.ransack(params[:q])
  end

  def set_user_column
    @user_nickname = User.select("nickname").distinct
  end
end
