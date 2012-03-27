class EventodeposController < ApplicationController
  # GET /eventodepos
  # GET /eventodepos.json
  def index
    @eventodepos = Eventodepo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eventodepos }
    end
  end

  # GET /eventodepos/1
  # GET /eventodepos/1.json
  def show
    @eventodepo = Eventodepo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eventodepo }
    end
  end

  # GET /eventodepos/new
  # GET /eventodepos/new.json
  def new
    @eventodepo = Eventodepo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eventodepo }
    end
  end

  # GET /eventodepos/1/edit
  def edit
    @eventodepo = Eventodepo.find(params[:id])
  end

  # POST /eventodepos
  # POST /eventodepos.json
  def create
    @eventodepo = Eventodepo.new(params[:eventodepo])

    respond_to do |format|
      if @eventodepo.save
        format.html { redirect_to @eventodepo, notice: 'Eventodepo was successfully created.' }
        format.json { render json: @eventodepo, status: :created, location: @eventodepo }
      else
        format.html { render action: "new" }
        format.json { render json: @eventodepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eventodepos/1
  # PUT /eventodepos/1.json
  def update
    @eventodepo = Eventodepo.find(params[:id])

    respond_to do |format|
      if @eventodepo.update_attributes(params[:eventodepo])
        format.html { redirect_to @eventodepo, notice: 'Eventodepo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eventodepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventodepos/1
  # DELETE /eventodepos/1.json
  def destroy
    @eventodepo = Eventodepo.find(params[:id])
    @eventodepo.destroy

    respond_to do |format|
      format.html { redirect_to eventodepos_url }
      format.json { head :ok }
    end
  end
end
