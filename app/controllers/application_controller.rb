class ApplicationController < ActionController::Base
 
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

 def authenticate_user! 
  redirect_to '/login' unless current_user 
 end 
end
