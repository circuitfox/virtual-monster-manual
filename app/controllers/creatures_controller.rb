class CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :edit, :update, :destroy]

  def search_config
    @search_config ||= {
      path: "/creatures/search",
      placeholder: "Search Creatures"
    }
  end

  # GET /creatures
  # GET /creatures.json
  def index
    @creatures = Creature.all
  end

  #Search
  def search
    @creatures = Creature.search({name: params[:query]})
    j render :index, layout: false
  end

  def search2
    @creatures = Creature.search(params.except(
      :utf8,
      :authenticity_token,
      :commit,
      :controller,
      :action
    ))
    j render :index, layout: false
  end

  def advanced_search
    render :search
  end

  # GET /creatures/1
  # GET /creatures/1.json
  def show
  end

  # GET /creatures/new
  def new
    @creature = Creature.new
  end

  # GET /creatures/1/edit
  def edit
  end

  # POST /creatures
  # POST /creatures.json
  def create
    @creature = Creature.new(creature_params)

    respond_to do |format|
      if @creature.save
        format.html { redirect_to @creature, notice: 'Creature was successfully created.' }
        format.json { render :show, status: :created, location: @creature }
      else
        format.html { render :new }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creatures/1
  # PATCH/PUT /creatures/1.json
  def update
    respond_to do |format|
      if @creature.update(creature_params)
        format.html { redirect_to @creature, notice: 'Creature was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature }
      else
        format.html { render :edit }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creatures/1
  # DELETE /creatures/1.json
  def destroy
    @creature.destroy
    respond_to do |format|
      format.html { redirect_to creatures_url, notice: 'Creature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = Creature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_params
      params.require(:creature).permit(
        :name,
        :type,
        :subtype,
        :size,
        :alignment,
        :ac,
        :ac_type,
        :hp,
        :hp_dice,
        :speed,
        :swim,
        :burrow,
        :climb,
        :fly,
        :strength,
        :dexterity,
        :constitution,
        :intellect,
        :wisdom,
        :charisma,
        :str_saving,
        :dex_saving,
        :con_saving,
        :int_saving,
        :wis_saving,
        :chr_saving,
        :perception,
        :blindsight,
        :darkvision,
        :tremorsense,
        :truesight,
        :challenge,
        creature_actions_attributes: [
          :id,
          :name,
          :damage_dice,
          :description,
          :range,
          :_destroy,
        ],
        abilities_attributes: [:id, :name, :description, :_destroy],
        skills_attributes: [:id, :name, :bonus, :_destroy],
        spells_attributes: [:id, :name, :description, :level, :dice, :_destroy],
        damage_immunities_attributes: [:id, :name, :_destroy],
        damage_vulnerabilities_attributes: [:id, :name, :_destroy],
        damage_resistances_attributes: [:id, :name, :_destroy],
        condition_immunities_attributes: [:id, :name, :_destroy],
        languages_attributes: [:id, :name, :_destroy],
      )
    end
end
