class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @posts = Post.all.page(params[:page]).per(15)
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user), alert: "不正なアクセスです。"
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to (@user), notice: '成功！'
    else
      render 'edit'
    end
  end
  
 private
  def user_params
    params.require(:user).permit(:username, :email)
  end
  
end
