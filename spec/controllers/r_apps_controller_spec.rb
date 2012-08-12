require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RAppsController do

  # This should return the minimal set of attributes required to create a valid
  # RApp. As you add validations to RApp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RAppsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all r_apps as @r_apps" do
      r_app = RApp.create! valid_attributes
      get :index, {}, valid_session
      assigns(:r_apps).should eq([r_app])
    end
  end

  describe "GET show" do
    it "assigns the requested r_app as @r_app" do
      r_app = RApp.create! valid_attributes
      get :show, {:id => r_app.to_param}, valid_session
      assigns(:r_app).should eq(r_app)
    end
  end

  describe "GET new" do
    it "assigns a new r_app as @r_app" do
      get :new, {}, valid_session
      assigns(:r_app).should be_a_new(RApp)
    end
  end

  describe "GET edit" do
    it "assigns the requested r_app as @r_app" do
      r_app = RApp.create! valid_attributes
      get :edit, {:id => r_app.to_param}, valid_session
      assigns(:r_app).should eq(r_app)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RApp" do
        expect {
          post :create, {:r_app => valid_attributes}, valid_session
        }.to change(RApp, :count).by(1)
      end

      it "assigns a newly created r_app as @r_app" do
        post :create, {:r_app => valid_attributes}, valid_session
        assigns(:r_app).should be_a(RApp)
        assigns(:r_app).should be_persisted
      end

      it "redirects to the created r_app" do
        post :create, {:r_app => valid_attributes}, valid_session
        response.should redirect_to(RApp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved r_app as @r_app" do
        # Trigger the behavior that occurs when invalid params are submitted
        RApp.any_instance.stub(:save).and_return(false)
        post :create, {:r_app => {}}, valid_session
        assigns(:r_app).should be_a_new(RApp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RApp.any_instance.stub(:save).and_return(false)
        post :create, {:r_app => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested r_app" do
        r_app = RApp.create! valid_attributes
        # Assuming there are no other r_apps in the database, this
        # specifies that the RApp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RApp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => r_app.to_param, :r_app => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested r_app as @r_app" do
        r_app = RApp.create! valid_attributes
        put :update, {:id => r_app.to_param, :r_app => valid_attributes}, valid_session
        assigns(:r_app).should eq(r_app)
      end

      it "redirects to the r_app" do
        r_app = RApp.create! valid_attributes
        put :update, {:id => r_app.to_param, :r_app => valid_attributes}, valid_session
        response.should redirect_to(r_app)
      end
    end

    describe "with invalid params" do
      it "assigns the r_app as @r_app" do
        r_app = RApp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RApp.any_instance.stub(:save).and_return(false)
        put :update, {:id => r_app.to_param, :r_app => {}}, valid_session
        assigns(:r_app).should eq(r_app)
      end

      it "re-renders the 'edit' template" do
        r_app = RApp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RApp.any_instance.stub(:save).and_return(false)
        put :update, {:id => r_app.to_param, :r_app => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested r_app" do
      r_app = RApp.create! valid_attributes
      expect {
        delete :destroy, {:id => r_app.to_param}, valid_session
      }.to change(RApp, :count).by(-1)
    end

    it "redirects to the r_apps list" do
      r_app = RApp.create! valid_attributes
      delete :destroy, {:id => r_app.to_param}, valid_session
      response.should redirect_to(r_apps_url)
    end
  end

end
