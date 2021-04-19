class Book < ApplicationRecord
  validate :publication_date_cannot_be_in_the_past
  validates :title, :resume, :price, :page_number, :isbn, presence: true
  validates :resume, length: { maximum: 500 }
  validates :price, numericality: { greater_than: 19.99 }
  validates :page_number, numericality: { greater_than: 99 }
  validates :title, :isbn, uniqueness: true

  belongs_to :category
  belongs_to :author

  private

  def publication_date_cannot_be_in_the_past
    if publication_date.present? && publication_date < Date.today
      errors.add(:publication_date, "can't be in the past")
    end
  end
end
