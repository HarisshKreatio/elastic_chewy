class Article < ApplicationRecord
  belongs_to :author
  has_many :comments, as: :entity
end
