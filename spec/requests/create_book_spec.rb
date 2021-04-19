require 'rails_helper'

describe 'api resgister a book' do
  let(:category) { create(:category) }
  let(:author) { create(:author) }

  it 'successfully' do
    book_attributes = attributes_for :book
    book_attributes.update({ author_id: author.id, category_id: category.id })

    post '/books', params: { book: book_attributes }

    json = JSON.parse(response.body, sympolize_names: true)

    expect(response).to have_http_status :created
    expect(json.values.compact).to include *book_attributes.values.compact
  end
end
