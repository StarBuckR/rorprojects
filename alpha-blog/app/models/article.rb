class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 } # it ensures title is not null, means title required
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end