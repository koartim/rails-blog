class ApplicationController < ActionController::Base
    def index
        render json: "hello"
    end
end
