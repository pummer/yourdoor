class HomeController < ApplicationController
  def index
    render :action => "index", :layout => "home"
  end
  
  
  def validate
    redirect_to new_user_registration_path(:email => params[:email])
    
    #if User.find_by_email(params[:email]).blank?
    #  redirect_to new_user_registration_path(:email => params[:email])
    #else
    #  redirect_to new_user_session_path
    #end
  end
  
end
