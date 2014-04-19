class Offer
  include Mongoid::Document
  
  embedded_in :event
end