class Page < ApplicationRecord
  belongs_to :subject

  validates_presence_of :page
end
