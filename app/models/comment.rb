class Comment < ApplicationRecord
  belongs_to :entity, polymorphic: true
end
