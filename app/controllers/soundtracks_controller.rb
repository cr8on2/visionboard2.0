class SoundtracksController < ApplicationController
  # GET /soundtracks
  # GET /soundtracks.json
  def index
    @soundtracks = Soundtrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soundtracks }
    end
  end

  # GET /soundtracks/1
  # GET /soundtracks/1.json
  def show
    @soundtrack = Soundtrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soundtrack }
    end
  end

  # GET /soundtracks/new
  # GET /soundtracks/new.json
  def new
    @soundtrack = Soundtrack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soundtrack }
    end
  end

  # GET /soundtracks/1/edit
  def edit
    @soundtrack = Soundtrack.find(params[:id])
  end

  # POST /soundtracks
  # POST /soundtracks.json
  def create
    @soundtrack = Soundtrack.new(params[:soundtrack])

    respond_to do |format|
      if @soundtrack.save
        format.html { redirect_to @soundtrack, notice: 'Soundtrack was successfully created.' }
        format.json { render json: @soundtrack, status: :created, location: @soundtrack }
      else
        format.html { render action: "new" }
        format.json { render json: @soundtrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soundtracks/1
  # PUT /soundtracks/1.json
  def update
    @soundtrack = Soundtrack.find(params[:id])

    respond_to do |format|
      if @soundtrack.update_attributes(params[:soundtrack])
        format.html { redirect_to @soundtrack, notice: 'Soundtrack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soundtrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soundtracks/1
  # DELETE /soundtracks/1.json
  def destroy
    @soundtrack = Soundtrack.find(params[:id])
    @soundtrack.destroy

    respond_to do |format|
      format.html { redirect_to soundtracks_url }
      format.json { head :no_content }
    end
  end
end
