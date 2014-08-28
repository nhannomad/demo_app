class McropostsController < ApplicationController
  before_action :set_mcropost, only: [:show, :edit, :update, :destroy]

  # GET /mcroposts
  # GET /mcroposts.json
  def index
    @mcroposts = Mcropost.all
  end

  # GET /mcroposts/1
  # GET /mcroposts/1.json
  def show
  end

  # GET /mcroposts/new
  def new
    @mcropost = Mcropost.new
  end

  # GET /mcroposts/1/edit
  def edit
  end

  # POST /mcroposts
  # POST /mcroposts.json
  def create
    @mcropost = Mcropost.new(mcropost_params)

    respond_to do |format|
      if @mcropost.save
        format.html { redirect_to @mcropost, notice: 'Mcropost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mcropost }
      else
        format.html { render action: 'new' }
        format.json { render json: @mcropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcroposts/1
  # PATCH/PUT /mcroposts/1.json
  def update
    respond_to do |format|
      if @mcropost.update(mcropost_params)
        format.html { redirect_to @mcropost, notice: 'Mcropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mcropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcroposts/1
  # DELETE /mcroposts/1.json
  def destroy
    @mcropost.destroy
    respond_to do |format|
      format.html { redirect_to mcroposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcropost
      @mcropost = Mcropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcropost_params
      params.require(:mcropost).permit(:content, :user_id)
    end
end
