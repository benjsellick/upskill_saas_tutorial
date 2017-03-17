class UsersController < ApplicationController
    
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
    end
    
    def index
        #Uses a join. optimizes the query, search active record includes
       @users = User.includes(:profile) 
    end
end
