class Author < ApplicationRecord
  validates :email, :name, :description, presence: true
  validates :email, length: { maximum:  400 }
end
