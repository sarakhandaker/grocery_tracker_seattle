class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]

  def show
    redirect_user
    redirect_to "/" unless current_user.id == params[:id].to_i
    if params[:click] == "true"
      @user.update_column(:notify, false)
      redirect_to @user
    end
  end
  def edit 
    redirect_user
    redirect_to "/" unless current_user.id == params[:id].to_i
  end
  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to user_path(@user)
    else
      flash[:error_messages]=@user.errors.full_messages
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:error_messages]=@user.errors.full_messages
      render :edit
    end
  end

  def destroy
    set_user.destroy
    redirect_to '/login'
  end

  def covid
    redirect_user
    set_user
  end

  def covid_notify
    @visit=Visit.find(params[:user][:visit_ids])
    @count=Visit.sick_users(@visit)
    render 'users/covid_notify'
  end
    
  private
    def set_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:name, :address, :email, :password, :password_confirmation)
    end
end
