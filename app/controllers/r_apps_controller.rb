class RAppsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /r_apps
  # GET /r_apps.json
  def index
    @r_apps = RApp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @r_apps }
    end
  end

  # GET /r_apps/1
  # GET /r_apps/1.json
  def show
    @r_app = RApp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @r_app }
    end
  end

  # GET /r_apps/new
  # GET /r_apps/new.json
  def new
    @r_app = RApp.new
    @r_app.build_property
    @r_app.build_landlord
    @r_app.build_listing_broker

#Adam commenting this out 7:15PM 8/26 -- Andy let's talk about this please
    iapp = @r_app.i_apps.build
    iapp.pets.build
    iapp.employments.build
    iapp.emergency_contacts.build
    iapp.incomes.build
    iapp.personal_references.build
    iapp.previous_addresses.build
#    iapp.build
    iapp.build_payment
 #   iapp.build_
      
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @r_app }
    end
  end

  # GET /r_apps/1/edit
  def edit
    @r_app = RApp.find(params[:id])
  end

  # POST /r_apps
  # POST /r_apps.json
  def create
    @r_app = RApp.new(params[:r_app])
     
    # Begin Transaction which will Make Credit Bureau Request
    # and Stripe Payment. If failure occurs, roll back the Transaction and 
    # Issue Refund if Stripe Transaction went through
    
    # determine amount of money to charge customer (25 initially. 5 if later on)
    # May want to put this inside the R_App Model to make a truely skinny controller
    
    respond_to do |format|
      if @r_app.create_application
        format.html { redirect_to @r_app, notice: 'R app was successfully created.' }
        format.json { render json: @r_app, status: :created, location: @r_app }
      else
        format.html { render action: "new" }
        format.json { render json: @r_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /r_apps/1
  # PUT /r_apps/1.json
  def update
    @r_app = RApp.find(params[:id])

    respond_to do |format|
      if @r_app.update_attributes(params[:r_app])
        format.html { redirect_to @r_app, notice: 'R app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @r_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_apps/1
  # DELETE /r_apps/1.json
  def destroy
    @r_app = RApp.find(params[:id])
    @r_app.destroy

    respond_to do |format|
      format.html { redirect_to r_apps_url }
      format.json { head :no_content }
    end
  end
end
