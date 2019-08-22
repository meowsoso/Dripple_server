class MessagesController < ApplicationController
    # before_action :set_message

    # GET /messages
    def index
      @messages = Messages.all
      json_response(@messages)
    end

    # GET /messages/:id
    def show
        json_response(@messages)
    end

    def set_message
        @message = Messages.find(params[:id])
    end
end