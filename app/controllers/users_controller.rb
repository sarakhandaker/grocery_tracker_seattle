class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]
    
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
        render edit
        end
      end

      def destroy
        set_user.destroy
        redirect_to '/login'
      end
    
      private
        def set_user
            @user = User.find(params[:id])
        end
        def user_params
            params.require(:user).permit(:name, :address, :email, :password, :password_confirmation)
        end
end
