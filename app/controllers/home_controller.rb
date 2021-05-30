class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all
    set_user_column
  end

  def search
    binding.pry
    @results = @p.result.includes(:question)
    # color_id = params[:q][:color_id_eq]
    # @color = Color.find_by(id: color_id)
  end

  private

  def search_user
    @p = User.ransack(params[:q])
  end

  def set_user_column
    #binding.pry
    @user_nickname = User.select("nickname").distinct
    #@question_color = Question.select(@color).distinct
  end
end
