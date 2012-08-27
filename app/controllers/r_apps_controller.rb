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
    iapp = @r_app.i_apps.build
    iapp.pets.build
    iapp.build_payment
      
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

    respond_to do |format|
      if @r_app.save
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
