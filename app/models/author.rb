class Author < ApplicationRecord
  validates :email, :name, :description, presence: true
  validates :description, length: { maximum:  400 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP  }
end
