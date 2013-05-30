class PhotoLibrariesController < ApplicationController
  # GET /photo_libraries
  # GET /photo_libraries.json
  def index
    @photo_libraries = PhotoLibrary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_libraries }
    end
  end

  # GET /photo_libraries/1
  # GET /photo_libraries/1.json
  def show
    @photo_library = PhotoLibrary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_library }
    end
  end

  # GET /photo_libraries/new
  # GET /photo_libraries/new.json
  def new
    @photo_library = PhotoLibrary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_library }
    end
  end

  # GET /photo_libraries/1/edit
  def edit
    @photo_library = PhotoLibrary.find(params[:id])
  end

  # POST /photo_libraries
  # POST /photo_libraries.json
  def create
    @photo_library = PhotoLibrary.new(params[:photo_library])

    respond_to do |format|
      if @photo_library.save
        format.html { redirect_to @photo_library, notice: 'Photo library was successfully created.' }
        format.json { render json: @photo_library, status: :created, location: @photo_library }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_libraries/1
  # PUT /photo_libraries/1.json
  def update
    @photo_library = PhotoLibrary.find(params[:id])

    respond_to do |format|
      if @photo_library.update_attributes(params[:photo_library])
        format.html { redirect_to @photo_library, notice: 'Photo library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_libraries/1
  # DELETE /photo_libraries/1.json
  def destroy
    @photo_library = PhotoLibrary.find(params[:id])
    @photo_library.destroy

    respond_to do |format|
      format.html { redirect_to photo_libraries_url }
      format.json { head :no_content }
    end
  end
end
