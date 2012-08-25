class PreviousAddressesController < ApplicationController
  # GET /previous_addresses
  # GET /previous_addresses.json
  def index
    @previous_addresses = PreviousAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @previous_addresses }
    end
  end

  # GET /previous_addresses/1
  # GET /previous_addresses/1.json
  def show
    @previous_address = PreviousAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @previous_address }
    end
  end

  # GET /previous_addresses/new
  # GET /previous_addresses/new.json
  def new
    @previous_address = PreviousAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @previous_address }
    end
  end

  # GET /previous_addresses/1/edit
  def edit
    @previous_address = PreviousAddress.find(params[:id])
  end

  # POST /previous_addresses
  # POST /previous_addresses.json
  def create
    @previous_address = PreviousAddress.new(params[:previous_address])

    respond_to do |format|
      if @previous_address.save
        format.html { redirect_to @previous_address, notice: 'Previous address was successfully created.' }
        format.json { render json: @previous_address, status: :created, location: @previous_address }
      else
        format.html { render action: "new" }
        format.json { render json: @previous_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /previous_addresses/1
  # PUT /previous_addresses/1.json
  def update
    @previous_address = PreviousAddress.find(params[:id])

    respond_to do |format|
      if @previous_address.update_attributes(params[:previous_address])
        format.html { redirect_to @previous_address, notice: 'Previous address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @previous_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_addresses/1
  # DELETE /previous_addresses/1.json
  def destroy
    @previous_address = PreviousAddress.find(params[:id])
    @previous_address.destroy

    respond_to do |format|
      format.html { redirect_to previous_addresses_url }
      format.json { head :no_content }
    end
  end
end
