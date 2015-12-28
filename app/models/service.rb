class Service < ActiveRecord::Base
  include Paperclip::Glue
  belongs_to :user
  validates_presence_of :name

  has_attached_file :avatar, styles: {thumb: "20x20", medium: "80x80"}, default_url: "default.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
