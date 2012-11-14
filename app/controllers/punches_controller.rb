class PunchesController < ApplicationController
  # GET /punches
  # GET /punches.json
  def index
    @punches = Punch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @punches }
    end
  end

  # GET /punches/1
  # GET /punches/1.json
  def show
    @punch = Punch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @punch }
    end
  end

  # GET /punches/new
  # GET /punches/new.json
  def new
    @user = User.find(session[:user_id])
    @punch = @user.punches.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @punch }
    end
  end

  # GET /punches/1/edit
  def edit
    @punch = Punch.find(params[:id])
  end

  # POST /punches
  # POST /punches.json
  def create
    @user = User.find(session[:user_id])
    @punch = @user.punches.create(punch_type_id: params[:punch][:punch_type_id].to_i, notes: params[:punch][:notes])
    @punch.date = Date.current.to_date
    @punch.time = Time.now
    respond_to do |format|
      if @punch.save
        format.html { redirect_to @punch, notice: 'Punch was successfully created.' }
        format.json { render json: @punch, status: :created, location: @punch }
      else
        format.html { render action: "new" }
        format.json { render json: @punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /punches/1
  # PUT /punches/1.json
  def update
    @punch = Punch.find(params[:id])

    respond_to do |format|
      if @punch.update_attributes(params[:punch])
        format.html { redirect_to @punch, notice: 'Punch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punches/1
  # DELETE /punches/1.json
  def destroy
    @punch = Punch.find(params[:id])
    @punch.destroy

    respond_to do |format|
      format.html { redirect_to punches_url }
      format.json { head :no_content }
    end
  end
end
