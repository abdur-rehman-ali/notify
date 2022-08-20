class UsersController < ApplicationController 
    def index
        @users = User.all 
    end

    def trade
        @request = TradeRequest.new(user_id:params[:user_id],sent_by:params[:sent_by])
        if @request.save
            redirect_to users_path, notice: 'Request sent'
        else
            redirect_to users_path, alert: 'Request sent failed'
        end
    end
end