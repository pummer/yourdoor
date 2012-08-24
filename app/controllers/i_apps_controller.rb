class IAppsController < ApplicationController
  # GET /i_apps
  # GET /i_apps.json
  def index
    @i_apps = IApp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @i_apps }
    end
  end

  # GET /i_apps/1
  # GET /i_apps/1.json
  def show
    @i_app = IApp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @i_app }
    end
  end

  # GET /i_apps/new
  # GET /i_apps/new.json
  def new
    @i_app = IApp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @i_app }
    end
  end

  # GET /i_apps/1/edit
  def edit
    @i_app = IApp.find(params[:id])
  end

  # POST /i_apps
  # POST /i_apps.json
  def create
    @i_app = IApp.new(params[:i_app])

    respond_to do |format|
      if @i_app.save
        format.html { redirect_to @i_app, notice: 'I app was successfully created.' }
        format.json { render json: @i_app, status: :created, location: @i_app }
      else
        format.html { render action: "new" }
        format.json { render json: @i_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /i_apps/1
  # PUT /i_apps/1.json
  def update
    @i_app = IApp.find(params[:id])

    respond_to do |format|
      if @i_app.update_attributes(params[:i_app])
        format.html { redirect_to @i_app, notice: 'I app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @i_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_apps/1
  # DELETE /i_apps/1.json
  def destroy
    @i_app = IApp.find(params[:id])
    @i_app.destroy

    respond_to do |format|
      format.html { redirect_to i_apps_url }
      format.json { head :no_content }
    end
  end
end
