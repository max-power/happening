class Organizer
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name,  type: String, localize: true
  field :info,  type: String, localize: true
  field :email, type: String
  field :phone, type: String
  field :website, type: String
  
  slug :name, localize: true
  
  has_many :events
  
  validates :name, presence: true
  validates :email, format: /@/, allow_blank: true
  validates :website, format: URI.regexp, allow_blank: true
  
  
  # one logo
  # many members
  # many contacts (emails,urls,phonenumbers)
  # has one billing_address
end
