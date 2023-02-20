class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :articles

  before_save do
    self.full_name = self.first_name.strip + " " + self.last_name.strip
  end
end
