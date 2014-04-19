class EventsController < InheritedResources::Base
  respond_to :html, :json
  
  def permitted_params
    params.permit(event: [:name, :info, :open_at, :ends_at])
  end
  
  def attributes
     %w(name info open_at ends_at)
  end
  
  def collection
    @events ||= end_of_association_chain.order(open_at: -1)
  end
  
  helper_method :attributes
end
