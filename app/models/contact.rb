class Contact
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :password, :string
  attr_accessor :meetings, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :meetings
  validates_format_of :email,
    with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500

end
