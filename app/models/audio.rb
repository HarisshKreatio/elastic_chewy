class Audio < ApplicationRecord
  has_many :comments, as: :entity
end
