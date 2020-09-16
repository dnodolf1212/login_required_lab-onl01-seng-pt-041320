class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    render :new
  end 

  def create 
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to login_path
    else
      render :show
    end
  end

  def show 
  end

  def destroy 
    session.delete(:name) if session[:name]
  end


end
