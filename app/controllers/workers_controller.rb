class WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  # GET /workers
  # GET /workers.json
  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def new
    @worker = Worker.new
  end


  def create
    @worker = Worker.new(worker_params)
      if @worker.save
        redirect_to @worker, notice: 'Worker was successfully created.'
      else
        render :new
      end
  end

  def update
      if @worker.update(worker_params)
        redirect_to @worker, notice: 'Worker was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @worker.destroy
    redirect_to :action => 'index'
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
