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

describe PersonalReferencesController do

  # This should return the minimal set of attributes required to create a valid
  # PersonalReference. As you add validations to PersonalReference, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PersonalReferencesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all personal_references as @personal_references" do
      personal_reference = PersonalReference.create! valid_attributes
      get :index, {}, valid_session
      assigns(:personal_references).should eq([personal_reference])
    end
  end

  describe "GET show" do
    it "assigns the requested personal_reference as @personal_reference" do
      personal_reference = PersonalReference.create! valid_attributes
      get :show, {:id => personal_reference.to_param}, valid_session
      assigns(:personal_reference).should eq(personal_reference)
    end
  end

  describe "GET new" do
    it "assigns a new personal_reference as @personal_reference" do
      get :new, {}, valid_session
      assigns(:personal_reference).should be_a_new(PersonalReference)
    end
  end

  describe "GET edit" do
    it "assigns the requested personal_reference as @personal_reference" do
      personal_reference = PersonalReference.create! valid_attributes
      get :edit, {:id => personal_reference.to_param}, valid_session
      assigns(:personal_reference).should eq(personal_reference)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PersonalReference" do
        expect {
          post :create, {:personal_reference => valid_attributes}, valid_session
        }.to change(PersonalReference, :count).by(1)
      end

      it "assigns a newly created personal_reference as @personal_reference" do
        post :create, {:personal_reference => valid_attributes}, valid_session
        assigns(:personal_reference).should be_a(PersonalReference)
        assigns(:personal_reference).should be_persisted
      end

      it "redirects to the created personal_reference" do
        post :create, {:personal_reference => valid_attributes}, valid_session
        response.should redirect_to(PersonalReference.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved personal_reference as @personal_reference" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalReference.any_instance.stub(:save).and_return(false)
        post :create, {:personal_reference => {}}, valid_session
        assigns(:personal_reference).should be_a_new(PersonalReference)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalReference.any_instance.stub(:save).and_return(false)
        post :create, {:personal_reference => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested personal_reference" do
        personal_reference = PersonalReference.create! valid_attributes
        # Assuming there are no other personal_references in the database, this
        # specifies that the PersonalReference created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PersonalReference.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => personal_reference.to_param, :personal_reference => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested personal_reference as @personal_reference" do
        personal_reference = PersonalReference.create! valid_attributes
        put :update, {:id => personal_reference.to_param, :personal_reference => valid_attributes}, valid_session
        assigns(:personal_reference).should eq(personal_reference)
      end

      it "redirects to the personal_reference" do
        personal_reference = PersonalReference.create! valid_attributes
        put :update, {:id => personal_reference.to_param, :personal_reference => valid_attributes}, valid_session
        response.should redirect_to(personal_reference)
      end
    end

    describe "with invalid params" do
      it "assigns the personal_reference as @personal_reference" do
        personal_reference = PersonalReference.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalReference.any_instance.stub(:save).and_return(false)
        put :update, {:id => personal_reference.to_param, :personal_reference => {}}, valid_session
        assigns(:personal_reference).should eq(personal_reference)
      end

      it "re-renders the 'edit' template" do
        personal_reference = PersonalReference.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonalReference.any_instance.stub(:save).and_return(false)
        put :update, {:id => personal_reference.to_param, :personal_reference => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested personal_reference" do
      personal_reference = PersonalReference.create! valid_attributes
      expect {
        delete :destroy, {:id => personal_reference.to_param}, valid_session
      }.to change(PersonalReference, :count).by(-1)
    end

    it "redirects to the personal_references list" do
      personal_reference = PersonalReference.create! valid_attributes
      delete :destroy, {:id => personal_reference.to_param}, valid_session
      response.should redirect_to(personal_references_url)
    end
  end

end
