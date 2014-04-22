class LocationsController < InheritedResources::Base
  belongs_to :event
  respond_to :html, :json
  
  def permitted_params
    params.permit(location: [:name, :info])
  end
  
  def attributes
     %w(name info)
  end
    
  helper_method :attributes
end
