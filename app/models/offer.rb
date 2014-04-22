class Offer
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  embedded_in :sellable, polymorphic: true
  
  field :name,  type: String, localize: true
  field :info,  type: String, localize: true
  field :price, type: Money
  field :sale_open_at, type: Time
  field :sale_ends_at, type: Time
  field :sale_min, type: Integer, default: 1
  field :sale_max, type: Integer
  field :limit, type: Integer

  slug :name, localize: true
  
  validates :name,     presence: true
  validates :sale_min, numericality: { greater_than: 0 }
  validates :sale_max, numericality: { greater_than: 0 }, allow_nil: true
  validates :limit,    numericality: { greater_than: 0 }, allow_nil: true
end