class Album < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :genre

end
