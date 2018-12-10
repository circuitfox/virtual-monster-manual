class CreatureActionsController < ApplicationController
  before_action :set_creature_action, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :update, :destroy]

  def search_config
    @search_config ||= {
      path: "/creature_actions/search",
      placeholder: "Search Actions"
    }
  end
  # GET /creature_actions
  # GET /creature_actions.json
  def index
    @creature_actions = CreatureAction.all
  end

  # GET /creature_actions/1
  # GET /creature_actions/1.json
  def show
  end

  # GET /creature_actions/new
  def new
    @creature_action = CreatureAction.new
  end

  # GET /creature_actions/1/edit
  def edit
  end

  # POST /creature_actions
  # POST /creature_actions.json
  def create
    @creature_action = CreatureAction.new(creature_action_params)

    respond_to do |format|
      if @creature_action.save
        format.html { redirect_to @creature_action, notice: 'Creature action was successfully created.' }
        format.json { render :show, status: :created, location: @creature_action }
      else
        format.html { render :new }
        format.json { render json: @creature_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creature_actions/1
  # PATCH/PUT /creature_actions/1.json
  def update
    respond_to do |format|
      if @creature_action.update(creature_action_params)
        format.html { redirect_to @creature_action, notice: 'Creature action was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature_action }
      else
        format.html { render :edit }
        format.json { render json: @creature_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creature_actions/1
  # DELETE /creature_actions/1.json
  def destroy
    @creature_action.destroy
    respond_to do |format|
      format.html { redirect_to creature_actions_url, notice: 'Creature action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature_action
      @creature_action = CreatureAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_action_params
      params.require(:creature_action).permit(:creature_id, :name, :damage_dice, :description, :range )
    end
end
