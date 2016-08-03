class Album < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre, dependent: :destroy 
end
