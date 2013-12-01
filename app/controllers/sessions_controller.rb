class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by_email(params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    session[:access] = user.access
    redirect_to root_url, notice: "Logged in!"

  else
    flash.now[:error] = 'Invalid email/password combination'
    render 'new'
  end
end

  def destroy
    session[:user_id] = nil
    session[:access] = nil
    redirect_to root_url, notice: "Logged out!"
  end

private

def session_params
  params_require(:email, :password).permit(:email, :password)
end

end
