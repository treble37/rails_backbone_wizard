class DataObjectsController < ApplicationController
  respond_to :html, :json
  before_action :set_data_object, only: [:show, :edit, :update, :destroy]

  # GET /data_objects
  def index
    respond_with(@data_objects = DataObject.all)
  end

  # GET /data_objects/1
  def show
  end

  # GET /data_objects/new
  def new
    @data_object = DataObject.new
  end

  # GET /data_objects/1/edit
  def edit
  end

  # POST /data_objects
  def create
    @data_object = DataObject.new(data_record: data_record_params)
    @data_object.save
    # if @data_object.save
    #   redirect_to @data_object, notice: 'Data object was successfully created.'
    # else
    #   render action: 'new'
    # end
    respond_with(@data_object)
  end

  # PATCH/PUT /data_objects/1
  def update
    if @data_object.update(data_object_params)
      redirect_to @data_object, notice: 'Data object was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /data_objects/1
  def destroy
    @data_object.destroy
    redirect_to data_objects_url, notice: 'Data object was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_object
      @data_object = DataObject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def data_object_params
      params[:data_object]
    end

    def data_record_params
      params[:data_record]
    end
end
