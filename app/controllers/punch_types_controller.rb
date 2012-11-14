class PunchTypesController < ApplicationController
  # GET /punch_types
  # GET /punch_types.json
  def index
    @punch_types = PunchType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @punch_types }
    end
  end

  # GET /punch_types/1
  # GET /punch_types/1.json
  def show
    @punch_type = PunchType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @punch_type }
    end
  end

  # GET /punch_types/new
  # GET /punch_types/new.json
  def new
    @punch_type = PunchType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @punch_type }
    end
  end

  # GET /punch_types/1/edit
  def edit
    @punch_type = PunchType.find(params[:id])
  end

  # POST /punch_types
  # POST /punch_types.json
  def create
    @punch_type = PunchType.new(params[:punch_type])

    respond_to do |format|
      if @punch_type.save
        format.html { redirect_to @punch_type, notice: 'Punch type was successfully created.' }
        format.json { render json: @punch_type, status: :created, location: @punch_type }
      else
        format.html { render action: "new" }
        format.json { render json: @punch_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /punch_types/1
  # PUT /punch_types/1.json
  def update
    @punch_type = PunchType.find(params[:id])

    respond_to do |format|
      if @punch_type.update_attributes(params[:punch_type])
        format.html { redirect_to @punch_type, notice: 'Punch type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punch_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punch_types/1
  # DELETE /punch_types/1.json
  def destroy
    @punch_type = PunchType.find(params[:id])
    @punch_type.destroy

    respond_to do |format|
      format.html { redirect_to punch_types_url }
      format.json { head :no_content }
    end
  end
end
