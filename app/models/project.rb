class Project < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  has_many :comments, dependent: :destroy
end
