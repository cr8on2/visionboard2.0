class PhotoArraysController < ApplicationController
  # GET /photo_arrays
  # GET /photo_arrays.json
  def index
    @photo_arrays = PhotoArray.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_arrays }
    end
  end

  # GET /photo_arrays/1
  # GET /photo_arrays/1.json
  def show
    @photo_array = PhotoArray.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_array }
    end
  end

  # GET /photo_arrays/new
  # GET /photo_arrays/new.json
  def new
    @photo_array = PhotoArray.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_array }
    end
  end

  # GET /photo_arrays/1/edit
  def edit
    @photo_array = PhotoArray.find(params[:id])
  end

  # POST /photo_arrays
  # POST /photo_arrays.json
  def create
    @photo_array = PhotoArray.new(params[:photo_array])

    respond_to do |format|
      if @photo_array.save
        format.html { redirect_to @photo_array, notice: 'Photo array was successfully created.' }
        format.json { render json: @photo_array, status: :created, location: @photo_array }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_arrays/1
  # PUT /photo_arrays/1.json
  def update
    @photo_array = PhotoArray.find(params[:id])

    respond_to do |format|
      if @photo_array.update_attributes(params[:photo_array])
        format.html { redirect_to @photo_array, notice: 'Photo array was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_arrays/1
  # DELETE /photo_arrays/1.json
  def destroy
    @photo_array = PhotoArray.find(params[:id])
    @photo_array.destroy

    respond_to do |format|
      format.html { redirect_to photo_arrays_url }
      format.json { head :no_content }
    end
  end
end
