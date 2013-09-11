class Admin
  # attr_accessible :title, :body
  include Mongoid::Document
  include Mongoid::Timestamps # adds automagic fields created_at, updated_at

  field  :username, type: String
  field  :password, type: String

end
