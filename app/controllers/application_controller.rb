class ApplicationController < ActionController::Base
    # http_basic_authenticate_with name: "admin", password: "nimda", except: [:index, :show]
    before_action :authenticate_user!
    before_action :is_admin?, :only => [:edit, :detroy]
    protect_from_forgery
    helper_method :current_user, :signed_in?, :is_admin?
  
    def signed_in?
      !!current_user
    end
  
    def is_admin?
        redirect_to root_path unless current_user.admin?
    #   signed_in? ? current_user.admin : false
    end
end
