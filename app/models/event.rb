class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, type: String, localize: true
  field :info, type: String, localize: true
  field :open_at, type: Time
  field :ends_at, type: Time
  
  slug :name, localize: true
 
  belongs_to  :organizer, autobuild: true
  embeds_many :locations
#  embeds_many :offers
  
  validates :name, presence: true
  validates :open_at, presence: true
#  validates :organizer, presence: true
end
