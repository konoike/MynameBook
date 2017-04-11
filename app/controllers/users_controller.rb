class UsersController < ApplicationController
  def index
  @users = User.all
  end
  # データを閲覧する画面を表示するためのAction
  def show
    @user = User.find(params[:id])
  end
  # データを作成する画面を表示するためのAction
  def new
  @user = User.new
  end
  # データを更新する画面を表示するためのAction
  def edit
  end
  # データを作成するためのAction
  def create
  @user = User.new(user_params)
  @user.save
  redirect_to @user
  end
  # データを更新するためのAction
  def update
  end
  # データを削除するためのAction
  def destroy
  end

  def user_params
  params.require(:user).permit(:name, :gender, :birthday, :hometown, :remarks)
  end
end
