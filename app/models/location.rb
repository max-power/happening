class Location
  include Mongoid::Document
  include Mongoid::Slug
  
  embedded_in :event
  embeds_one  :address
  
  field :name, type: String, localize: true
  field :info, type: String, localize: true
  field :coordinates, type: Array
#  field :show_on_map # enum show_on_map: [:never, :always, :after_event_start, :after_event_end], default: :always
  
  slug name, localize: true
  
  embedded_in :event
  
#  embeds_one :address
#  embeds_one :point
# field :coordinates, type: Point
end


# MongoDB supports the following GeoJSON objects:
# Point
# LineString
# Polygon
# MultiPoint
# MultiLineString
# MultiPolygon
# GeometryCollection
  
class Point
  def to_a
    [lng, lat]
  end
  
  def to_geojson
    { type: "Point", coordinates: to_a }
  end
  
  def mongoize
    to_geojson
  end
end

# class GeometryCollection
#   def to_geojson
#     { type: "GeometryCollection", geometries: [] }
#   end
# end