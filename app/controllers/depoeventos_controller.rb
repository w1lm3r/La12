class DepoeventosController < ApplicationController
  # GET /depoeventos
  # GET /depoeventos.json
  def index
    @depoeventos = Depoevento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @depoeventos }
    end
  end

  # GET /depoeventos/1
  # GET /depoeventos/1.json
  def show
    @depoevento = Depoevento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @depoevento }
    end
  end

  # GET /depoeventos/new
  # GET /depoeventos/new.json
  def new
    @depoevento = Depoevento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @depoevento }
    end
  end

  # GET /depoeventos/1/edit
  def edit
    @depoevento = Depoevento.find(params[:id])
  end

  # POST /depoeventos
  # POST /depoeventos.json
  def create
    @depoevento = Depoevento.new(params[:depoevento])

    respond_to do |format|
      if @depoevento.save
        format.html { redirect_to @depoevento, notice: 'Depoevento was successfully created.' }
        format.json { render json: @depoevento, status: :created, location: @depoevento }
      else
        format.html { render action: "new" }
        format.json { render json: @depoevento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /depoeventos/1
  # PUT /depoeventos/1.json
  def update
    @depoevento = Depoevento.find(params[:id])

    respond_to do |format|
      if @depoevento.update_attributes(params[:depoevento])
        format.html { redirect_to @depoevento, notice: 'Depoevento was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @depoevento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depoeventos/1
  # DELETE /depoeventos/1.json
  def destroy
    @depoevento = Depoevento.find(params[:id])
    @depoevento.destroy

    respond_to do |format|
      format.html { redirect_to depoeventos_url }
      format.json { head :ok }
    end
  end
end
