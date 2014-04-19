class OrganizersController < InheritedResources::Base
  respond_to :html, :json
  
  def permitted_params
    params.permit(organizer: [:name, :info, :website, :email])
  end
  
  def attributes
    [:name, :info, :website, :email]
  end
  
  helper_method :attributes
end