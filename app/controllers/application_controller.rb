class ApplicationController < ActionController::Base
    
    def index
        render json: "hello world"
    end

end
