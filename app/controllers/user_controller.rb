class UserController < ApplicationController
 

    # GET /users or /users.json
    def index
    end
    before_action :authenticate_user!
end
