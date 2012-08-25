class PersonalReferencesController < ApplicationController
  # GET /personal_references
  # GET /personal_references.json
  def index
    @personal_references = PersonalReference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_references }
    end
  end

  # GET /personal_references/1
  # GET /personal_references/1.json
  def show
    @personal_reference = PersonalReference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_reference }
    end
  end

  # GET /personal_references/new
  # GET /personal_references/new.json
  def new
    @personal_reference = PersonalReference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_reference }
    end
  end

  # GET /personal_references/1/edit
  def edit
    @personal_reference = PersonalReference.find(params[:id])
  end

  # POST /personal_references
  # POST /personal_references.json
  def create
    @personal_reference = PersonalReference.new(params[:personal_reference])

    respond_to do |format|
      if @personal_reference.save
        format.html { redirect_to @personal_reference, notice: 'Personal reference was successfully created.' }
        format.json { render json: @personal_reference, status: :created, location: @personal_reference }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_references/1
  # PUT /personal_references/1.json
  def update
    @personal_reference = PersonalReference.find(params[:id])

    respond_to do |format|
      if @personal_reference.update_attributes(params[:personal_reference])
        format.html { redirect_to @personal_reference, notice: 'Personal reference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_references/1
  # DELETE /personal_references/1.json
  def destroy
    @personal_reference = PersonalReference.find(params[:id])
    @personal_reference.destroy

    respond_to do |format|
      format.html { redirect_to personal_references_url }
      format.json { head :no_content }
    end
  end
end
