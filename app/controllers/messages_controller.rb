class MessagesController < ApplicationController

    def new
        @messages = Message.new
    end

    def create
        @messages = Message.new(message_params)
        if @message.save

        else
            render 'new'
        end
    end

    private
    
    def message_params
        params.require(:message).permit(:body)
    end
end