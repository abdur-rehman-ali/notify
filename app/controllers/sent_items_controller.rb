class SentItemsController < ApplicationController 
    def create 
        @items = SentItem.new(items_params)
        if @items.save 
            redirect_to root_path, notice: 'Request sent'
        else
            redirect_to root_path, notice: 'Error occurd'
        end
    end

    private 
    def items_params 
        params.require('sent_item').permit(:name, :quantity, :trade_request_id)
    end
end