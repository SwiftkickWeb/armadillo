class WebPropertiesController < ApplicationController
  before_action :get_client
  before_action :set_web_property, only: %i[ show edit update destroy ]

  # GET /web_properties or /web_properties.json
  def index
    @web_properties = @client.web_properties
  end

  # GET /web_properties/1 or /web_properties/1.json
  def show
  end

  # GET /web_properties/new
  def new
    @web_property = @client.web_properties.build
  end

  # GET /web_properties/1/edit
  def edit
  end

  # POST /web_properties or /web_properties.json
  def create
    @web_property = @client.web_properties.build(web_property_params)

    respond_to do |format|
      if @web_property.save
        format.html { redirect_to @client, notice: "Web property was successfully created." }
        format.json { render :show, status: :created, location: @web_property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_properties/1 or /web_properties/1.json
  def update
    respond_to do |format|
      if @web_property.update(web_property_params)
        format.html { redirect_to client_url(@client), notice: "Web property was successfully updated." }
        format.json { render :show, status: :ok, location: @web_property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_properties/1 or /web_properties/1.json
  def destroy
    if @web_property.destroy
      msg = "Property was successfully deleted."
      respond_to do |format|
        format.html { redirect_to client_path(@client), notice: msg }
        format.json { head :no_content }
      end
    else
      msg = "There was an issue deleting the property."
      respond_to do |format|
        format.html { redirect_to client_path(@client), alert: msg }
        format.json { head :no_content }
      end
    end

  end

  private
    def get_client
      @client = Client.find(params[:client_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_web_property
      @web_property = @client.web_properties.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_property_params
      params.require(:web_property).permit(:name, :url, :client_id)
    end
end
