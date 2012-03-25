class ServiciosController < ApplicationController
  # GET /servicios
  # GET /servicios.json
  def index
    @servicios = Servicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicios }
    end
  end

  # GET /servicios/1
  # GET /servicios/1.json
  def show
    @servicio = Servicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @servicio }
    end
  end

  # GET /servicios/new
  # GET /servicios/new.json
  def new
    @servicio = Servicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @servicio }
    end
  end

  # GET /servicios/1/edit
  def edit
    @servicio = Servicio.find(params[:id])
  end

  # POST /servicios
  # POST /servicios.json
  def create
    @servicio = Servicio.new(params[:servicio])

    respond_to do |format|
      if @servicio.save
        format.html { redirect_to @servicio, notice: 'Servicio was successfully created.' }
        format.json { render json: @servicio, status: :created, location: @servicio }
      else
        format.html { render action: "new" }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servicios/1
  # PUT /servicios/1.json
  def update
    @servicio = Servicio.find(params[:id])

    respond_to do |format|
      if @servicio.update_attributes(params[:servicio])
        format.html { redirect_to @servicio, notice: 'Servicio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @servicio = Servicio.find(params[:id])
    @servicio.destroy

    respond_to do |format|
      format.html { redirect_to servicios_url }
      format.json { head :ok }
    end
  end
end
