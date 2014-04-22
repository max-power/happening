class LineItem
  include Mongoid::Document
  
  embedded_in :order
  belongs_to :offer
  
  field :quantity, type: Integer, default: 1
  field :price, type: Money
  field :tax

  validates :quantity, numericality: { greater_than: 0 }
end

class Order
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to  :event
  embeds_many :line_items, store_as: :items
  embeds_one  :billing_address
  embeds_one  :shipping_address
  has_many    :tickets
end

class Ticket
  include Mongoid::Document
  include Mongoid::Timestamps
  
  def to_passbook
#    Passbook::Ticket.new(self)
  end
end