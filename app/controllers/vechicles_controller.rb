class VechiclesController < ApplicationController
  # GET /vechicles
  # GET /vechicles.json
  def index
    @vechicles = Vechicle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vechicles }
    end
  end

  # GET /vechicles/1
  # GET /vechicles/1.json
  def show
    @vechicle = Vechicle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vechicle }
    end
  end

  # GET /vechicles/new
  # GET /vechicles/new.json
  def new
    @vechicle = Vechicle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vechicle }
    end
  end

  # GET /vechicles/1/edit
  def edit
    @vechicle = Vechicle.find(params[:id])
  end

  # POST /vechicles
  # POST /vechicles.json
  def create
    @vechicle = Vechicle.new(params[:vechicle])

    respond_to do |format|
      if @vechicle.save
        format.html { redirect_to @vechicle, notice: 'Vechicle was successfully created.' }
        format.json { render json: @vechicle, status: :created, location: @vechicle }
      else
        format.html { render action: "new" }
        format.json { render json: @vechicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vechicles/1
  # PUT /vechicles/1.json
  def update
    @vechicle = Vechicle.find(params[:id])

    respond_to do |format|
      if @vechicle.update_attributes(params[:vechicle])
        format.html { redirect_to @vechicle, notice: 'Vechicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vechicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicles/1
  # DELETE /vechicles/1.json
  def destroy
    @vechicle = Vechicle.find(params[:id])
    @vechicle.destroy

    respond_to do |format|
      format.html { redirect_to vechicles_url }
      format.json { head :no_content }
    end
  end
end
