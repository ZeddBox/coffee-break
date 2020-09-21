class Contact < ApplicationRecord
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate => true

after_create :contact_email

def contact_email
  ContactMailer.contact_admin().deliver_now
  ContactMailer.contact_user().deliver_now
end

REGEX_PATTERN = /^(.+)@(.+)$/ 
def is_email_valid?
    self.email =~REGEX_PATTERN
end

end