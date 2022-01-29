class Categorie < ApplicationRecord
  has_many :ideas, dependent: :destroy

  validates_presence_of :name
end
