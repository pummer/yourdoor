class OoglersController < ApplicationController
  # GET /ooglers
  # GET /ooglers.json
  def index
    @ooglers = Oogler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ooglers }
    end
  end

  # GET /ooglers/1
  # GET /ooglers/1.json
  def show
    @oogler = Oogler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oogler }
    end
  end

  # GET /ooglers/new
  # GET /ooglers/new.json
  def new
    @oogler = Oogler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oogler }
    end
  end

  # GET /ooglers/1/edit
  def edit
    @oogler = Oogler.find(params[:id])
  end

  # POST /ooglers
  # POST /ooglers.json
  def create
    @oogler = Oogler.new(params[:oogler])

    respond_to do |format|
      if @oogler.save
        format.html { redirect_to @oogler, notice: 'Oogler was successfully created.' }
        format.json { render json: @oogler, status: :created, location: @oogler }
      else
        format.html { render action: "new" }
        format.json { render json: @oogler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ooglers/1
  # PUT /ooglers/1.json
  def update
    @oogler = Oogler.find(params[:id])

    respond_to do |format|
      if @oogler.update_attributes(params[:oogler])
        format.html { redirect_to @oogler, notice: 'Oogler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oogler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ooglers/1
  # DELETE /ooglers/1.json
  def destroy
    @oogler = Oogler.find(params[:id])
    @oogler.destroy

    respond_to do |format|
      format.html { redirect_to ooglers_url }
      format.json { head :no_content }
    end
  end
end
