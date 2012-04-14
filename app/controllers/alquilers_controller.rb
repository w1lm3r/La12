class AlquilersController < ApplicationController
  # GET /alquilers
  # GET /alquilers.json
	def add_servicio
		@alquiler = Alquiler.find(params[:id])
	end     
  def index
    @alquilers = Alquiler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alquilers }
    end
  end

  # GET /alquilers/1
  # GET /alquilers/1.json
  def show
    @alquiler = Alquiler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alquiler }
    end
  end

  # GET /alquilers/new
  # GET /alquilers/new.json
  def new
    @alquiler = Alquiler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alquiler }
    end
  end

  # GET /alquilers/1/edit
  def edit
    @alquiler = Alquiler.find(params[:id])
  end

  # POST /alquilers
  # POST /alquilers.json
  def create
    @alquiler = Alquiler.new(params[:alquiler])

    respond_to do |format|
      if @alquiler.save
        format.html { redirect_to @alquiler, notice: 'Alquiler was successfully created.' }
        format.json { render json: @alquiler, status: :created, location: @alquiler }
      else
        format.html { render action: "new" }
        format.json { render json: @alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alquilers/1
  # PUT /alquilers/1.json
  def update
    @alquiler = Alquiler.find(params[:id])

    respond_to do |format|
      if @alquiler.update_attributes(params[:alquiler])
        format.html { redirect_to @alquiler, notice: 'Alquiler was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alquilers/1
  # DELETE /alquilers/1.json
  def destroy
    @alquiler = Alquiler.find(params[:id])
    @alquiler.destroy

    respond_to do |format|
      format.html { redirect_to alquilers_url }
      format.json { head :ok }
    end
  end
end
