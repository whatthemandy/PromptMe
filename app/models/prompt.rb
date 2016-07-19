class Prompt < ActiveRecord::Base
  belongs_to :user
  has_many   :stories

  validates  :idea, presence: true
end
