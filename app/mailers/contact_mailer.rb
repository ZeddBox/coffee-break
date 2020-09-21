class ContactMailer < ApplicationMailer
  default from: 'raphael.coffeebreak@gmail.com'
  
  def contact_email()
    @url  = 'http://coffeebreak.pro/' 
    @message = Contact.last.message
    @email = Contact.last.email
    @name = Contact.last.name

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "raphael.coffeebreak@gmail.com", subject: 'Nouveau message de Coffeebreak.pro')

  end
end
