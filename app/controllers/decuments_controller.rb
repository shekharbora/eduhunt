class DecumentsController < ApplicationController
    before_filter :authenticate_user!
  before_action :set_decument, only: [:show, :edit, :update, :destroy]

  # GET /decuments
  # GET /decuments.json
  def index
    @decuments = Decument.all
  end

  # GET /decuments/1
  # GET /decuments/1.json
  def show
  end

  # GET /decuments/new
  def new
    @decument = Decument.new
  end

  # GET /decuments/1/edit
  def edit
  end

  # POST /decuments
  # POST /decuments.json
  def create
    @decument = Decument.new(decument_params)

    respond_to do |format|
      if @decument.save
        format.html { redirect_to @decument, notice: 'Decument was successfully created.' }
        format.json { render :show, status: :created, location: @decument }
      else
        format.html { render :new }
        format.json { render json: @decument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decuments/1
  # PATCH/PUT /decuments/1.json
  def update
    respond_to do |format|
      if @decument.update(decument_params)
        format.html { redirect_to @decument, notice: 'Decument was successfully updated.' }
        format.json { render :show, status: :ok, location: @decument }
      else
        format.html { render :edit }
        format.json { render json: @decument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decuments/1
  # DELETE /decuments/1.json
  def destroy
    @decument.destroy
    respond_to do |format|
      format.html { redirect_to decuments_url, notice: 'Decument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decument
      @decument = Decument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def decument_params
      params.require(:decument).permit(:subject, :title, :file, :description,:user_id)
    end
end
