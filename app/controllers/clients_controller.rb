class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @clients = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/new
  # GET /clients/new.json
  def new
    @clients = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clients }
    end
  end

  # GET /clients/1/edit
  def edit
    @clients = Client.find(params[:id])
  end

  # POST /clients
  # POST /clients.json
  def create
    @clients = Client.new(params[:clients])

    respond_to do |format|
      if @clients.save
        format.html { redirect_to @clients, notice: 'Client was successfully created.' }
        format.json { render json: @clients, status: :created, location: @clients }
      else
        format.html { render action: "new" }
        format.json { render json: @clients.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.json
  def update
    @clients = Client.find(params[:id])

    respond_to do |format|
      if @clients.update_attributes(params[:clients])
        format.html { redirect_to @clients, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clients.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @clients = Client.find(params[:id])
    @clients.destroy

    respond_to do |format|
      format.html { redirect_to client_url }
      format.json { head :no_content }
    end
  end
end
