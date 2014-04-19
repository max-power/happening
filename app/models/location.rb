class Location
  include Mongoid::Document
  include Mongoid::Slug
  
  field :name, type: String, localize: true
  field :info, type: String, localize: true
  field :coordinates, type: Array
  
  slug name, localize: true
end
