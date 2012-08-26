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

describe EmergencyContactsController do

  # This should return the minimal set of attributes required to create a valid
  # EmergencyContact. As you add validations to EmergencyContact, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmergencyContactsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all emergency_contacts as @emergency_contacts" do
      emergency_contact = EmergencyContact.create! valid_attributes
      get :index, {}, valid_session
      assigns(:emergency_contacts).should eq([emergency_contact])
    end
  end

  describe "GET show" do
    it "assigns the requested emergency_contact as @emergency_contact" do
      emergency_contact = EmergencyContact.create! valid_attributes
      get :show, {:id => emergency_contact.to_param}, valid_session
      assigns(:emergency_contact).should eq(emergency_contact)
    end
  end

  describe "GET new" do
    it "assigns a new emergency_contact as @emergency_contact" do
      get :new, {}, valid_session
      assigns(:emergency_contact).should be_a_new(EmergencyContact)
    end
  end

  describe "GET edit" do
    it "assigns the requested emergency_contact as @emergency_contact" do
      emergency_contact = EmergencyContact.create! valid_attributes
      get :edit, {:id => emergency_contact.to_param}, valid_session
      assigns(:emergency_contact).should eq(emergency_contact)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new EmergencyContact" do
        expect {
          post :create, {:emergency_contact => valid_attributes}, valid_session
        }.to change(EmergencyContact, :count).by(1)
      end

      it "assigns a newly created emergency_contact as @emergency_contact" do
        post :create, {:emergency_contact => valid_attributes}, valid_session
        assigns(:emergency_contact).should be_a(EmergencyContact)
        assigns(:emergency_contact).should be_persisted
      end

      it "redirects to the created emergency_contact" do
        post :create, {:emergency_contact => valid_attributes}, valid_session
        response.should redirect_to(EmergencyContact.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved emergency_contact as @emergency_contact" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmergencyContact.any_instance.stub(:save).and_return(false)
        post :create, {:emergency_contact => {}}, valid_session
        assigns(:emergency_contact).should be_a_new(EmergencyContact)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmergencyContact.any_instance.stub(:save).and_return(false)
        post :create, {:emergency_contact => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested emergency_contact" do
        emergency_contact = EmergencyContact.create! valid_attributes
        # Assuming there are no other emergency_contacts in the database, this
        # specifies that the EmergencyContact created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        EmergencyContact.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => emergency_contact.to_param, :emergency_contact => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested emergency_contact as @emergency_contact" do
        emergency_contact = EmergencyContact.create! valid_attributes
        put :update, {:id => emergency_contact.to_param, :emergency_contact => valid_attributes}, valid_session
        assigns(:emergency_contact).should eq(emergency_contact)
      end

      it "redirects to the emergency_contact" do
        emergency_contact = EmergencyContact.create! valid_attributes
        put :update, {:id => emergency_contact.to_param, :emergency_contact => valid_attributes}, valid_session
        response.should redirect_to(emergency_contact)
      end
    end

    describe "with invalid params" do
      it "assigns the emergency_contact as @emergency_contact" do
        emergency_contact = EmergencyContact.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EmergencyContact.any_instance.stub(:save).and_return(false)
        put :update, {:id => emergency_contact.to_param, :emergency_contact => {}}, valid_session
        assigns(:emergency_contact).should eq(emergency_contact)
      end

      it "re-renders the 'edit' template" do
        emergency_contact = EmergencyContact.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EmergencyContact.any_instance.stub(:save).and_return(false)
        put :update, {:id => emergency_contact.to_param, :emergency_contact => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested emergency_contact" do
      emergency_contact = EmergencyContact.create! valid_attributes
      expect {
        delete :destroy, {:id => emergency_contact.to_param}, valid_session
      }.to change(EmergencyContact, :count).by(-1)
    end

    it "redirects to the emergency_contacts list" do
      emergency_contact = EmergencyContact.create! valid_attributes
      delete :destroy, {:id => emergency_contact.to_param}, valid_session
      response.should redirect_to(emergency_contacts_url)
    end
  end

end