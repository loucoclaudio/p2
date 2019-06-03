class ApplicationController < ActionController::Base
    # http_basic_authenticate_with name: "admin", password: "nimda", except: [:index, :show]
    before_action :authenticate_user!

end
