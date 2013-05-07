class Post < ActiveRecord::Base
  attr_accessible :body, :title, :picture
  has_attached_file :picture, AppConfig.paperclip

  belongs_to :user
end
