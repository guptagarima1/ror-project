class Colglibrary < ApplicationRecord
    has_many :books, dependent: :destroy
    validates :name, presence: true,
    length: { minimum: 4 }
end


