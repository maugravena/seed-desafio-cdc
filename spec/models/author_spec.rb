require 'rails_helper'

describe Author do
  it 'does have a unique email' do
    author = create(:author)
    author_with_same_email = build(:author, email: author.email)
    author_with_same_email.valid?
    expect(author_with_same_email.errors.first).to be_a(ActiveModel::Error)
  end
end
