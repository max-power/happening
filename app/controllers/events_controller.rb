class EventsController < InheritedResources::Base
  
  def permitted_params
    params.permit(event: [:name, :info, :open_at, :ends_at])
  end
end
