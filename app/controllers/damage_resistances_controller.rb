class DamageResistancesController < ApplicationController
  before_action :set_damage_resistance, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :update, :destroy]

  # GET /damage_resistances
  # GET /damage_resistances.json
  def index
    @damage_resistances = DamageResistance.all
  end

  # GET /damage_resistances/1
  # GET /damage_resistances/1.json
  def show
  end

  # GET /damage_resistances/new
  def new
    @damage_resistance = DamageResistance.new
  end

  # GET /damage_resistances/1/edit
  def edit
  end

  # POST /damage_resistances
  # POST /damage_resistances.json
  def create
    @damage_resistance = DamageResistance.new(damage_resistance_params)

    respond_to do |format|
      if @damage_resistance.save
        format.html { redirect_to @damage_resistance, notice: 'Damage resistance was successfully created.' }
        format.json { render :show, status: :created, location: @damage_resistance }
      else
        format.html { render :new }
        format.json { render json: @damage_resistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damage_resistances/1
  # PATCH/PUT /damage_resistances/1.json
  def update
    respond_to do |format|
      if @damage_resistance.update(damage_resistance_params)
        format.html { redirect_to @damage_resistance, notice: 'Damage resistance was successfully updated.' }
        format.json { render :show, status: :ok, location: @damage_resistance }
      else
        format.html { render :edit }
        format.json { render json: @damage_resistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damage_resistances/1
  # DELETE /damage_resistances/1.json
  def destroy
    @damage_resistance.destroy
    respond_to do |format|
      format.html { redirect_to damage_resistances_url, notice: 'Damage resistance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damage_resistance
      @damage_resistance = DamageResistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damage_resistance_params
      params.fetch(:damage_resistance).permit(:name)
    end
end
