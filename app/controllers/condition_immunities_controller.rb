class ConditionImmunitiesController < ApplicationController
  before_action :set_condition_immunity, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: [:edit, :update, :destroy]

  # GET /condition_immunities
  # GET /condition_immunities.json
  def index
    @condition_immunities = ConditionImmunity.all
  end

  # GET /condition_immunities/1
  # GET /condition_immunities/1.json
  def show
  end

  # GET /condition_immunities/new
  def new
    @condition_immunity = ConditionImmunity.new
  end

  # GET /condition_immunities/1/edit
  def edit
  end

  # POST /condition_immunities
  # POST /condition_immunities.json
  def create
    @condition_immunity = ConditionImmunity.new(condition_immunity_params)

    respond_to do |format|
      if @condition_immunity.save
        format.html { redirect_to @condition_immunity, notice: 'Condition immunity was successfully created.' }
        format.json { render :show, status: :created, location: @condition_immunity }
      else
        format.html { render :new }
        format.json { render json: @condition_immunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_immunities/1
  # PATCH/PUT /condition_immunities/1.json
  def update
    respond_to do |format|
      if @condition_immunity.update(condition_immunity_params)
        format.html { redirect_to @condition_immunity, notice: 'Condition immunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition_immunity }
      else
        format.html { render :edit }
        format.json { render json: @condition_immunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_immunities/1
  # DELETE /condition_immunities/1.json
  def destroy
    @condition_immunity.destroy
    respond_to do |format|
      format.html { redirect_to condition_immunities_url, notice: 'Condition immunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_immunity
      @condition_immunity = ConditionImmunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_immunity_params
      params.fetch(:condition_immunity).permit(:name)
    end
end
