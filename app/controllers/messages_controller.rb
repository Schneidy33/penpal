class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find_by(id: params[:id])
  end

  def new
  end

  def create
    @message = Message.new
    @message.body = params[:body]
    @message.reciever_id = params[:reciever_id]
    @message.sender_id = params[:sender_id]
    @message.subject = params[:subject]
    @message.image_url = params[:image_url]

    if @message.save
      redirect_to "/messages/#{ @message.id }"
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find_by(id: params[:id])
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.body = params[:body]
    @message.reciever_id = params[:reciever_id]
    @message.sender_id = params[:sender_id]
    @message.subject = params[:subject]
    @message.image_url = params[:image_url]

    if @message.save
      redirect_to "/messages/#{ @message.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy


    redirect_to "/messages"
  end
end
