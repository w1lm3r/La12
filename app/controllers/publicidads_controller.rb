class PublicidadsController < ApplicationController
  # GET /publicidads
  # GET /publicidads.json
  def index
    @publicidads = Publicidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publicidads }
    end
  end

  # GET /publicidads/1
  # GET /publicidads/1.json
  def show
    @publicidad = Publicidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publicidad }
    end
  end

  # GET /publicidads/new
  # GET /publicidads/new.json
  def new
    @publicidad = Publicidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publicidad }
    end
  end

  # GET /publicidads/1/edit
  def edit
    @publicidad = Publicidad.find(params[:id])
  end

  # POST /publicidads
  # POST /publicidads.json
  def create
    @publicidad = Publicidad.new(params[:publicidad])

    respond_to do |format|
      if @publicidad.save
        format.html { redirect_to @publicidad, notice: 'Publicidad was successfully created.' }
        format.json { render json: @publicidad, status: :created, location: @publicidad }
      else
        format.html { render action: "new" }
        format.json { render json: @publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publicidads/1
  # PUT /publicidads/1.json
  def update
    @publicidad = Publicidad.find(params[:id])

    respond_to do |format|
      if @publicidad.update_attributes(params[:publicidad])
        format.html { redirect_to @publicidad, notice: 'Publicidad was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicidads/1
  # DELETE /publicidads/1.json
  def destroy
    @publicidad = Publicidad.find(params[:id])
    @publicidad.destroy

    respond_to do |format|
      format.html { redirect_to publicidads_url }
      format.json { head :ok }
    end
  end
end
