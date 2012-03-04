class FoliosController < ApplicationController
  before_filter :authenticate_client!
  # GET /folios
  # GET /folios.json
  def index
    @folios = Folio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @folios }
    end
  end

  # GET /folios/1
  # GET /folios/1.json
  def show
    @folio = Folio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @folio }
    end
  end

  # GET /folios/new
  # GET /folios/new.json
  def new
    @folio = Folio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @folio }
    end
  end

  # GET /folios/1/edit
  def edit
    @folio = Folio.find(params[:id])
  end

  # POST /folios
  # POST /folios.json
  def create
    @folio = Folio.new(params[:folio])

    respond_to do |format|
      if @folio.save
        format.html { redirect_to @folio, notice: 'Folio was successfully created.' }
        format.json { render json: @folio, status: :created, location: @folio }
      else
        format.html { render action: "new" }
        format.json { render json: @folio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /folios/1
  # PUT /folios/1.json
  def update
    @folio = Folio.find(params[:id])

    respond_to do |format|
      if @folio.update_attributes(params[:folio])
        format.html { redirect_to @folio, notice: 'Folio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @folio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folios/1
  # DELETE /folios/1.json
  def destroy
    @folio = Folio.find(params[:id])
    @folio.destroy

    respond_to do |format|
      format.html { redirect_to folios_url }
      format.json { head :no_content }
    end
  end
end
