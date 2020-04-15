class SessionsController < ApplicationController
    def new
      #not tied to an instance
    end
  
    def create
      user=User.find_by(name: params[:session][:name])
      @user = user.try(:authenticate, params[:session][:password])
      if @user
        session[:user_id]=user.id
        @user = user
        redirect_to user_path(@user)
      else
        flash[:message]="incorrect details"
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete :user_id
      redirect_to '/'
    end
    private 
    def session_params
      params.require[:session].permit[:name, :password]
    end
  end