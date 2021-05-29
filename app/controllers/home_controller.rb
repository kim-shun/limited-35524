class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index
  #before_action :search_question, only: [:index, :search]

  def index
    @users = User.all
  end

  # def search
  #   binding.pry
  #   @results = @p.result.includes(:question)  # 検索条件にマッチした商品の情報を取得
  # end

  # private

  # def search_question
  #   @p = User.ransack(params[:q])  # 検索オブジェクトを生成
  # end

end
