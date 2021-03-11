class Subject < ApplicationRecord
  belongs_to :student
  has_many :pages, dependent: :destroy

  validates_presence_of :name
end
