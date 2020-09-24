class ContactMailer < ApplicationMailer
  default from: 'raphael.coffeebreak@gmail.com'
  
  def contact_admin()
    @url  = 'http://coffeebreak.pro/' 
    @message = Contact.last.message
    @email = Contact.last.email
    @name = Contact.last.name
    @number = Contact.last.number
    @company = Contact.last.company
    
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "raphael.coffeebreak@gmail.com", subject: 'Nouveau message de Coffeebreak.pro')
    
  end
  
  def contact_user()
    @url  = 'http://coffeebreak.pro/' 
    @message = Contact.last.message
    @email = Contact.last.email
    @name = Contact.last.name
    @number = Contact.last.number
    @company = Contact.last.company
    
    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @email, subject: 'Confirmation de votre message à Coffeebreak.pro')
  
  end
end
