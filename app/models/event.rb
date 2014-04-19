class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  include Mongoid::Tree
  
  field :name, type: String, localize: true
  field :info, type: String, localize: true
  field :open_at, type: Time
  field :ends_at, type: Time
  
  slug :name, localize: true
 
  belongs_to  :organizer, autobuild: true
  embeds_many :offers
  embeds_many :locations
#  embeds_many :images, as: :imageable, class_name: 'Image', cascade_callbacks: true
  # has_one :route

  
  validates :name, presence: true
  validates :open_at, presence: true
  validates :ends_at, presence: true
#  validates :organizer, presence: true

  before_destroy :destroy_children

  def date_range
    (open_at..ends_at)
  end
end
