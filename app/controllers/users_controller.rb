class UsersController < ApplicationController
  before_action :authenticate_user!
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @philosophy = @user.question.philosophy.name
    @color = @user.question.color.name
    @my_type = @user.question.my_type.name
    @like_type = @user.question.like_type.name
    @prefecture = @user.question.prefecture.name
    @food = @user.question.food.name
    @hobby = @user.question.hobby.name
    @music = @user.question.music.name
    @angry = @user.question.angry.name
    @improve = @user.question.improve.name
    @text = @user.question.text
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
