class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :prompt

  validates  :body, :user_id, :prompt_id, presence: true
end
