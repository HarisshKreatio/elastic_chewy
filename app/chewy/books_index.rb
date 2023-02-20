class BooksIndex < Chewy::Index
  root dynamic: false

  index_scope Author

  field :id
  field :first_name
  field :last_name
  field :full_name
  field :email
  field :phone_number
  field :dob
  field :address do
    field :country, value: ->(a) { a['country'] }
    field :state
    field :city
    field :pinCode, value: ->(a) { a['postalCode'] }
  end

  field :article, type: :nested, value: ->(a) { a.articles } do
    field :title
    field :description
    field :comments, type: :nested do
      field :content
      field :status, type: 'boolean'
    end
  end

end
