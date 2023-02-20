class Video < ApplicationRecord
  has_many :comments, as: :entity
end
