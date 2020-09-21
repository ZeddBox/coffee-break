class ContactController < ApplicationController

  def index
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.is_email_valid? == nil
      flash.now[:danger] = @message = "Le mail n'est pas valide"
    else
      respond_to do |format|
        if @contact.save
          format.js   { flash.now[:success] = @message = "Merci pour votre message, vous serez contacté très vite !" }
        else
          format.js   { flash.now[:error] = @message = "Le message n'a pas été envoyé désolé, contactez moi directement" }
        end
      end
    end
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
