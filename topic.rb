class Topic < ActiveRecord::Base
  validates :title, :links, :email, presence: true

end
