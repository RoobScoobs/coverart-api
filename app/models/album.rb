class Album < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :genre, dependent: :destroy
end
