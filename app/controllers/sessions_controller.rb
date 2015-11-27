# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController

  def new
  end
  def create
    user = Usuario.find_by(usuario: params[:session][:usuario])
    password = Usuario.find_by(password: params[:session][:password])
    # If the user exists AND the password entered is correct.
    if user && password
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:usuario_id] = user.id
      redirect_to '/'
    else
      flash.now[:danger] = 'Usuario/Password Invalido'
       render 'new'
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to '/login'
  end

end

