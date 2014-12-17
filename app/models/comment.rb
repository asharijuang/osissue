class Comment < ActiveRecord::Base
belongs_to :ticket

  validates :ticket_id, presence: true
  validates :comment, presence: true
end
