class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all
  end

  def search
    @results = @p.result.includes(:question)
  end

  private

  def search_user
    @p = User.ransack(params[:q])  # 検索オブジェクトを生成
  end
end
