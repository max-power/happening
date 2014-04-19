require "test_helper"

describe OrganizersController do
  let(:organizer) { create(:organizer) }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizers)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates organizer" do
    assert_difference('Organizer.count') do
      post :create, organizer: attributes_for(:organizer)
    end
  
    assert_redirected_to organizer_path(assigns(:organizer))
  end

  it "shows organizer" do
    get :show, id: organizer
    assert_response :success
  end
  
  it "gets edit" do
    get :edit, id: organizer
    assert_response :success
  end
  
  it "updates organizer" do
    put :update, id: organizer, organizer: attributes_for(:organizer)
    assert_redirected_to organizer_path(assigns(:organizer))
  end
  
  it "destroys organizer" do
    skip "WFT?"
    assert_difference('Organizer.count', -1) do
      delete :destroy, id: organizer
    end
    
    assert_redirected_to organizers_path
  end

end
