class ComentsController < ApplicationController
  # GET /coments
  # GET /coments.json
  def index
    @coments = Coment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coments }
    end
  end

  # GET /coments/1
  # GET /coments/1.json
  def show
    @coment = Coment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coment }
    end
  end

  # GET /coments/new
  # GET /coments/new.json
  def new
    @coment = Coment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coment }
    end
  end

  # GET /coments/1/edit
  def edit
    @coment = Coment.find(params[:id])
  end

  # POST /coments
  # POST /coments.json
  def create
    @coment = Coment.new(params[:coment])

    respond_to do |format|
      if @coment.save
        format.html { redirect_to @coment, notice: 'Coment was successfully created.' }
        format.json { render json: @coment, status: :created, location: @coment }
      else
        format.html { render action: "new" }
        format.json { render json: @coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coments/1
  # PUT /coments/1.json
  def update
    @coment = Coment.find(params[:id])

    respond_to do |format|
      if @coment.update_attributes(params[:coment])
        format.html { redirect_to @coment, notice: 'Coment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coments/1
  # DELETE /coments/1.json
  def destroy
    @coment = Coment.find(params[:id])
    @coment.destroy

    respond_to do |format|
      format.html { redirect_to coments_url }
      format.json { head :ok }
    end
  end
end
