class CoolstuffsController < ApplicationController
  before_action :set_coolstuff, only: [:show, :edit, :update, :destroy]

  # GET /coolstuffs
  # GET /coolstuffs.json
  def index
    @coolstuffs = Coolstuff.all
  end

  # GET /coolstuffs/1
  # GET /coolstuffs/1.json
  def show
  end

  # GET /coolstuffs/new
  def new
    @coolstuff = Coolstuff.new
  end

  # GET /coolstuffs/1/edit
  def edit
  end

  # POST /coolstuffs
  # POST /coolstuffs.json
  def create
    @coolstuff = Coolstuff.new(coolstuff_params)

    respond_to do |format|
      if @coolstuff.save
        format.html { redirect_to @coolstuff, notice: 'Coolstuff was successfully created.' }
        format.json { render :show, status: :created, location: @coolstuff }
      else
        format.html { render :new }
        format.json { render json: @coolstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coolstuffs/1
  # PATCH/PUT /coolstuffs/1.json
  def update
    respond_to do |format|
      if @coolstuff.update(coolstuff_params)
        format.html { redirect_to @coolstuff, notice: 'Coolstuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @coolstuff }
      else
        format.html { render :edit }
        format.json { render json: @coolstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coolstuffs/1
  # DELETE /coolstuffs/1.json
  def destroy
    @coolstuff.destroy
    respond_to do |format|
      format.html { redirect_to coolstuffs_url, notice: 'Coolstuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coolstuff
      @coolstuff = Coolstuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coolstuff_params
      params[:coolstuff]
    end
end
