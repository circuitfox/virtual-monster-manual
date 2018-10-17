class DamageVulnerabilitiesController < ApplicationController
  before_action :set_damage_vulnerability, only: [:show, :edit, :update, :destroy]

  # GET /damage_vulnerabilities
  # GET /damage_vulnerabilities.json
  def index
    @damage_vulnerabilities = DamageVulnerability.all
  end

  # GET /damage_vulnerabilities/1
  # GET /damage_vulnerabilities/1.json
  def show
  end

  # GET /damage_vulnerabilities/new
  def new
    @damage_vulnerability = DamageVulnerability.new
  end

  # GET /damage_vulnerabilities/1/edit
  def edit
  end

  # POST /damage_vulnerabilities
  # POST /damage_vulnerabilities.json
  def create
    @damage_vulnerability = DamageVulnerability.new(damage_vulnerability_params)

    respond_to do |format|
      if @damage_vulnerability.save
        format.html { redirect_to @damage_vulnerability, notice: 'Damage vulnerability was successfully created.' }
        format.json { render :show, status: :created, location: @damage_vulnerability }
      else
        format.html { render :new }
        format.json { render json: @damage_vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damage_vulnerabilities/1
  # PATCH/PUT /damage_vulnerabilities/1.json
  def update
    respond_to do |format|
      if @damage_vulnerability.update(damage_vulnerability_params)
        format.html { redirect_to @damage_vulnerability, notice: 'Damage vulnerability was successfully updated.' }
        format.json { render :show, status: :ok, location: @damage_vulnerability }
      else
        format.html { render :edit }
        format.json { render json: @damage_vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damage_vulnerabilities/1
  # DELETE /damage_vulnerabilities/1.json
  def destroy
    @damage_vulnerability.destroy
    respond_to do |format|
      format.html { redirect_to damage_vulnerabilities_url, notice: 'Damage vulnerability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damage_vulnerability
      @damage_vulnerability = DamageVulnerability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damage_vulnerability_params
      params.fetch(:damage_vulnerability).permit(:name)
    end
end
