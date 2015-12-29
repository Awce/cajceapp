class Work < ActiveRecord::Base
  belongs_to :service
  validates_presence_of :name
end
