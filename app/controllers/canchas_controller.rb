class CanchasController < ApplicationController
  # GET /canchas
  # GET /canchas.json
  def index
    @canchas = Cancha.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @canchas }
    end
  end

  # GET /canchas/1
  # GET /canchas/1.json
  def show
    @cancha = Cancha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cancha }
    end
  end

  # GET /canchas/new
  # GET /canchas/new.json
  def new
    @cancha = Cancha.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cancha }
    end
  end

  # GET /canchas/1/edit
  def edit
    @cancha = Cancha.find(params[:id])
  end

  # POST /canchas
  # POST /canchas.json
  def create
    @cancha = Cancha.new(params[:cancha])

    respond_to do |format|
      if @cancha.save
        format.html { redirect_to @cancha, notice: 'Cancha was successfully created.' }
        format.json { render json: @cancha, status: :created, location: @cancha }
      else
        format.html { render action: "new" }
        format.json { render json: @cancha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /canchas/1
  # PUT /canchas/1.json
  def update
    @cancha = Cancha.find(params[:id])

    respond_to do |format|
      if @cancha.update_attributes(params[:cancha])
        format.html { redirect_to @cancha, notice: 'Cancha was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cancha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canchas/1
  # DELETE /canchas/1.json
  def destroy
    @cancha = Cancha.find(params[:id])
    @cancha.destroy

    respond_to do |format|
      format.html { redirect_to canchas_url }
      format.json { head :ok }
    end
  end
end
