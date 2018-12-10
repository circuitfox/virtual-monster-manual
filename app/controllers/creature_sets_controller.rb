class CreatureSetsController < ApplicationController
  before_action :set_creature_set, only: [:show, :edit, :update, :destroy]

  # GET /creature_sets
  # GET /creature_sets.json
  def index
    @creature_sets = CreatureSet.all
    @currentUser = current_user.id
  end

  # GET /creature_sets/1
  # GET /creature_sets/1.json
  def show
  end

  # GET /creature_sets/new
  def new
    @creature_set = CreatureSet.new
  end

  # GET /creature_sets/1/edit
  def edit
  end

  # POST /creature_sets
  # POST /creature_sets.json
  def create
    # @creature_set = CreatureSet.new(creature_set_params)
    @creature_set = current_user.creature_sets.new(creature_set_params)

    respond_to do |format|
      if @creature_set.save
        format.html { redirect_to @creature_set, notice: 'Creature set was successfully created.' }
        format.json { render :show, status: :created, location: @creature_set }
      else
        format.html { render :new }
        format.json { render json: @creature_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creature_sets/1
  # PATCH/PUT /creature_sets/1.json
  def update
    respond_to do |format|
      if @creature_set.update(creature_set_params)
        format.html { redirect_to @creature_set, notice: 'Creature set was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature_set }
      else
        format.html { render :edit }
        format.json { render json: @creature_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creature_sets/1
  # DELETE /creature_sets/1.json
  def destroy
    @creature_set.destroy
    respond_to do |format|
      format.html { redirect_to creature_sets_url, notice: 'Creature set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature_set
      @creature_set = CreatureSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_set_params
      params.require(:creature_set).permit(:name, :description, :private)
    end
end
