class ApplicationController < ActionController::Base
 
  def after_sign_in_path_for(resource)
    dashboard_index_path(current_user) # your path
  end  

 def authenticate_user! 
  redirect_to '/login' unless current_user 
 end 
end
