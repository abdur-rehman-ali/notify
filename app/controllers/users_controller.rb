class UsersController < ApplicationController 
    before_action :authenticate_user!
    def index
        @users = User.all 
    end

    def trade
        @request = TradeRequest.new(user_id:params[:user_id],sent_to:params[:sent_to])
        if @request.save
            redirect_to root_path, notice: 'Request sent'
        else
            redirect_to root_path, alert: 'Request sent failed'
        end
    end

    def deal 
        @user = User.find(params[:id])
    end
end