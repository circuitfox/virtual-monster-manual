class DamageImmunitiesController < ApplicationController
  before_action :set_damage_immunity, only: [:show, :edit, :update, :destroy]

  # GET /damage_immunities
  # GET /damage_immunities.json
  def index
    @damage_immunities = DamageImmunity.all
  end

  # GET /damage_immunities/1
  # GET /damage_immunities/1.json
  def show
  end

  # GET /damage_immunities/new
  def new
    @damage_immunity = DamageImmunity.new
  end

  # GET /damage_immunities/1/edit
  def edit
  end

  # POST /damage_immunities
  # POST /damage_immunities.json
  def create
    @damage_immunity = DamageImmunity.new(damage_immunity_params)

    respond_to do |format|
      if @damage_immunity.save
        format.html { redirect_to @damage_immunity, notice: 'Damage immunity was successfully created.' }
        format.json { render :show, status: :created, location: @damage_immunity }
      else
        format.html { render :new }
        format.json { render json: @damage_immunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damage_immunities/1
  # PATCH/PUT /damage_immunities/1.json
  def update
    respond_to do |format|
      if @damage_immunity.update(damage_immunity_params)
        format.html { redirect_to @damage_immunity, notice: 'Damage immunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @damage_immunity }
      else
        format.html { render :edit }
        format.json { render json: @damage_immunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damage_immunities/1
  # DELETE /damage_immunities/1.json
  def destroy
    @damage_immunity.destroy
    respond_to do |format|
      format.html { redirect_to damage_immunities_url, notice: 'Damage immunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damage_immunity
      @damage_immunity = DamageImmunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damage_immunity_params
      params.fetch(:damage_immunity).permit(:name)
    end
end
