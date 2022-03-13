class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]


  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page])
  end

  def index
    @users = User.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user), notice: "プロフィールを更新しました"
    else
    render :edit
    end
  end

  private

   def user_params
     params.require(:user).permit(:name,:profile_image, :introduction)
   end

   def ensure_correct_user
     @user = User.find(params[:id])
     unless @user == current_user
       redirect_to user_path(current_user)
     end
   end
end
