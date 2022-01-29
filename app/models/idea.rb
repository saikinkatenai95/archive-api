class Idea < ApplicationRecord
  belongs_to :categorie

  validates_presence_of :body
end
