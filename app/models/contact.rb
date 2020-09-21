class Contact < ApplicationRecord
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate => true

after_create :contact_email

def contact_email
  ContactMailer.contact_email().deliver_now
end
end