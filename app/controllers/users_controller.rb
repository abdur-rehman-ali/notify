class UsersController < ApplicationController 
    before_action :authenticate_user!
    def index
        @users = User.all 
    end

    def trade
        receive_items = params[:receive_items]
        @request = TradeRequest.new(trade_params)
        if @request.save
            sent_items = params[:sent_items]
            sent_items.each do |key,value| 
                SentItem.create(name: value[:name], quantity: value[:quantity], trade_request_id: @request.id)
            end
            receive_items = params[:sent_items]
            receive_items.each do |key,value| 
                ReceiveItem.create(name: value[:name], quantity: value[:quantity], trade_request_id: @request.id)
            end
            redirect_to root_path, notice: 'Request sent'
        else
            redirect_to root_path, alert: 'Request sent failed'
        end
    end

    def accept
        @trade = TradeRequest.find(params[:id])
        if @trade.update(status: 'ACCEPT')
            redirect_to edit_user_registration_path, notice: 'Accepted'
        end
    end

    def reject
        @trade = TradeRequest.find(params[:id])
        if @trade.update(status: 'REJECT')
            redirect_to edit_user_registration_path, notice: 'Rejected'
        end
    end

    def destroy 
        @trade = TradeRequest.find(params[:id])
        if @trade.destroy 
            redirect_to edit_user_registration_path, notice: 'Cancelled'
        end
    end

    def trade_params 
        params.require(:user).permit(:user_id, :sent_to)
    end
    def deal 
        @user = User.find(params[:id])
    end
end