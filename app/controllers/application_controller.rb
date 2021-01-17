class ApplicationController < ActionController::Base
 
 def authenticate_user! 
  redirect_to '/login' unless current_user 
 end 
end
