class ApplicationController < ActionController::Base
    include SessionsHelper

    def index
        render html: "hello world"
    end

end
