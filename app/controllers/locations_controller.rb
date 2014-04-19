class LocationsController < InheritedResources::Base
  belongs_to :event
  respond_to :html, :json
  
  # def permitted_params
  #   params.permit(event: [:name, :info, :open_at, :ends_at])
  # end
  
  def attributes
     %w(name info)
  end
    
  helper_method :attributes
end
