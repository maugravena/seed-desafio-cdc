require 'rails_helper'

describe 'api resgister a book' do
  let(:category) { create(:category) }
  let(:author) { create(:author) }

  it 'successfully' do
    book_attributes = attributes_for :book

    post '/books', params: { book: book_attributes }

    json = JSON.parse(response.body, sympolize_names: true)

    expect(json.values.compact).to include *book_attributes.values.compact
    expect(response).to have_http_status :created
  end
end
