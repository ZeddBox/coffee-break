class ContactController < ApplicationController

  def index
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: 'Contact was successfully created'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { redirect_to root_path, notice: 'Contact was not created'}
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
