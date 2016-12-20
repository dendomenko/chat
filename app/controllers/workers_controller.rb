class WorkersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /workers
  # GET /workers.json
  def index
    @workers = Worker.all
  end

  # GET /workers/1
  # GET /workers/1.json
  def show
  end

  # GET /workers/new
  def new
    @worker = Worker.new
  end

  # GET /workers/1/edit
  def edit
  end

  # POST /workers
  # POST /workers.json
  # TODO Add check for empty fields
  def create
    @worker = Worker.new(user_params)

    respond_to do |format|
      if @worker.save
        format.html { redirect_to @worker, notice: 'Worker was successfully created.' }
        format.json { render :show, status: :created, location: @worker }
      else
        format.html { render :new }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workers/1
  # PATCH/PUT /workers/1.json
  # TODO add edir button
  def update
    respond_to do |format|
      if @worker.update(user_params)
        format.html { redirect_to @worker, notice: 'Worker was successfully updated.' }
        format.json { render :show, status: :ok, location: @worker }
      else
        format.html { render :edit }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workers/1
  # DELETE /workers/1.json
  # TODO add delete button
  def destroy
    @worker.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Worker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @worker = Worker.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:worker).permit(:name, :surname, :phone)
  end
end
