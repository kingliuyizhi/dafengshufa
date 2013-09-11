class Announcement
  # attr_accessible :title, :content
  include Mongoid::Document
  include Mongoid::Timestamps # adds automagic fields created_at, updated_at

  field  :title, type: String
  field  :content, type: String
  field  :status, type: Integer

end
