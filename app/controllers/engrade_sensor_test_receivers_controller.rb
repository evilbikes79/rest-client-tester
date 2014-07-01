class EngradeSensorTestReceiversController < ApplicationController
  # GET /engrade_sensor_test_receivers
  # GET /engrade_sensor_test_receivers.json
  def index
    @engrade_sensor_test_receivers = EngradeSensorTestReceiver.all

    new_receiver = EngradeSensorTestReceiver.new
    new_receiver.body = request.body.to_string
    new_receiver.headers = request.headers.to_string
  
    new_receiver.save!

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @engrade_sensor_test_receivers }
    end
  end

  # GET /engrade_sensor_test_receivers/1
  # GET /engrade_sensor_test_receivers/1.json
  def show
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @engrade_sensor_test_receiver }
    end
  end

  # GET /engrade_sensor_test_receivers/new
  # GET /engrade_sensor_test_receivers/new.json
  def new
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @engrade_sensor_test_receiver }
    end
  end

  # GET /engrade_sensor_test_receivers/1/edit
  def edit
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.find(params[:id])
  end

  # POST /engrade_sensor_test_receivers
  # POST /engrade_sensor_test_receivers.json
  def create
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.new(params[:engrade_sensor_test_receiver])

    respond_to do |format|
      if @engrade_sensor_test_receiver.save
        format.html { redirect_to @engrade_sensor_test_receiver, notice: 'Engrade sensor test receiver was successfully created.' }
        format.json { render json: @engrade_sensor_test_receiver, status: :created, location: @engrade_sensor_test_receiver }
      else
        format.html { render action: "new" }
        format.json { render json: @engrade_sensor_test_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /engrade_sensor_test_receivers/1
  # PUT /engrade_sensor_test_receivers/1.json
  def update
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.find(params[:id])

    respond_to do |format|
      if @engrade_sensor_test_receiver.update_attributes(params[:engrade_sensor_test_receiver])
        format.html { redirect_to @engrade_sensor_test_receiver, notice: 'Engrade sensor test receiver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @engrade_sensor_test_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engrade_sensor_test_receivers/1
  # DELETE /engrade_sensor_test_receivers/1.json
  def destroy
    @engrade_sensor_test_receiver = EngradeSensorTestReceiver.find(params[:id])
    @engrade_sensor_test_receiver.destroy

    respond_to do |format|
      format.html { redirect_to engrade_sensor_test_receivers_url }
      format.json { head :no_content }
    end
  end
end
