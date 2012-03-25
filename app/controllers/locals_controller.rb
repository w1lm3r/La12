class LocalsController < ApplicationController
  # GET /locals
  # GET /locals.json
  def index
    @locals = Local.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locals }
    end
  end

  # GET /locals/1
  # GET /locals/1.json
  def show
    @local = Local.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local }
    end
  end

  # GET /locals/new
  # GET /locals/new.json
  def new
    @local = Local.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local }
    end
  end

  # GET /locals/1/edit
  def edit
    @local = Local.find(params[:id])
  end

  # POST /locals
  # POST /locals.json
  def create
    @local = Local.new(params[:local])

    respond_to do |format|
      if @local.save
        format.html { redirect_to @local, notice: 'Local was successfully created.' }
        format.json { render json: @local, status: :created, location: @local }
      else
        format.html { render action: "new" }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locals/1
  # PUT /locals/1.json
  def update
    @local = Local.find(params[:id])

    respond_to do |format|
      if @local.update_attributes(params[:local])
        format.html { redirect_to @local, notice: 'Local was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locals/1
  # DELETE /locals/1.json
  def destroy
    @local = Local.find(params[:id])
    @local.destroy

    respond_to do |format|
      format.html { redirect_to locals_url }
      format.json { head :ok }
    end
  end
end
