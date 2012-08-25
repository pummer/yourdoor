class EmergencyContactsController < ApplicationController
  # GET /emergency_contacts
  # GET /emergency_contacts.json
  def index
    @emergency_contacts = EmergencyContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergency_contacts }
    end
  end

  # GET /emergency_contacts/1
  # GET /emergency_contacts/1.json
  def show
    @emergency_contact = EmergencyContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergency_contact }
    end
  end

  # GET /emergency_contacts/new
  # GET /emergency_contacts/new.json
  def new
    @emergency_contact = EmergencyContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergency_contact }
    end
  end

  # GET /emergency_contacts/1/edit
  def edit
    @emergency_contact = EmergencyContact.find(params[:id])
  end

  # POST /emergency_contacts
  # POST /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(params[:emergency_contact])

    respond_to do |format|
      if @emergency_contact.save
        format.html { redirect_to @emergency_contact, notice: 'Emergency contact was successfully created.' }
        format.json { render json: @emergency_contact, status: :created, location: @emergency_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergency_contacts/1
  # PUT /emergency_contacts/1.json
  def update
    @emergency_contact = EmergencyContact.find(params[:id])

    respond_to do |format|
      if @emergency_contact.update_attributes(params[:emergency_contact])
        format.html { redirect_to @emergency_contact, notice: 'Emergency contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1
  # DELETE /emergency_contacts/1.json
  def destroy
    @emergency_contact = EmergencyContact.find(params[:id])
    @emergency_contact.destroy

    respond_to do |format|
      format.html { redirect_to emergency_contacts_url }
      format.json { head :no_content }
    end
  end
end
