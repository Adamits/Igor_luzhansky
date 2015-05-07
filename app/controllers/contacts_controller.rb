class ContactsController < ApplicationController
  def index
    
  end

  def new
  	@contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = nil
      flash[:notice] = 'Thank you for your message!'
      redirect_to root_path
    else
      flash[:error] = 'Cannot send message.'
      render :new
    end
  end
 end