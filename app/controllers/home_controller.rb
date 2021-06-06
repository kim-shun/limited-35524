class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all
    set_user_column
    @ogiris = Ogiri.all
  end

  def new
    @ogiri = Ogiri.new
  end

  def create
    @ogiri = Ogiri.new(ogiri_params)
    if @ogiri.save
      redirect_to root_path
    else
      render :new
    end
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

  def ogiri_params
    params.require(:ogiri).permit(:first_text_id, :second_text_id, :text).merge(user_id: current_user.id)
  end
end
