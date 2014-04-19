require "test_helper"

describe EventsController do

  let(:event) { create(:event) }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates event" do
    assert_difference('Event.count') do
      post :create, event: attributes_for(:event)
    end
  
    assert_redirected_to event_path(assigns(:event))
  end

  it "shows event" do
    get :show, id: event
    assert_response :success
  end
  
  it "gets edit" do
    get :edit, id: event
    assert_response :success
  end
  
  it "updates event" do
    put :update, id: event, event: attributes_for(:event)
    assert_redirected_to event_path(assigns(:event))
  end
  
  it "destroys event" do
    skip "WFT?"
    assert_difference('Event.count', -1) do
      delete :destroy, id: event
    end
    
    assert_redirected_to events_path
  end

end
