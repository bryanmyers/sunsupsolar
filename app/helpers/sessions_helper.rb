module SessionsHelper

  def sign_in(user)
    session[:remember_token] = user.id
  end
end
