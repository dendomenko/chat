class WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  # GET /workers
  # GET /workers.json
  def index
    @workers = Worker.all
  end

  # GET /workers/1
  # GET /workers/1.json
  def show
  end

  def new
    @worker = Worker.new
  end

  def edit
  end


  # TODO Add check for empty fields
  def create
    @worker = Worker.new(worker_params)

    respond_to do |format|
      if @worker.save
        format.html { redirect_to @worker, notice: 'Worker was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /workers/1
  # PATCH/PUT /workers/1.json
  # TODO add edit button
  def update
    respond_to do |format|
      if @worker.update(worker_params)
        format.html { redirect_to @worker, notice: 'Worker was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /workers/1
  # DELETE /workers/1.json
  # TODO add delete button
  def destroy
    @worker.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_worker
    @worker = Worker.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def worker_params
    params.require(:worker).permit(:name, :surname, :phone)
  end
end
