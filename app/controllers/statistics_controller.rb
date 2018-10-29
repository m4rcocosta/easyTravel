class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :edit, :update, :destroy]

  # GET /statistics
  # GET /statistics.json
  def index
    @statistics = Statistic.all
  end

  # GET /statistics/1
  # GET /statistics/1.json   //NOT USED FOR NOW.
  ##def show
  ## end

  # GET /statistics/new  //NOT USED FOR NOW
  ##def new
  ##  @statistic = Statistic.new
  ##end

  # GET /statistics/1/edit //NOT USED FOR NOW
  ##def edit
  ##end

  # POST /statistics
  # POST /statistics.json
  def create
    find = Statistic.where("partenza = ? AND arrivo = ?", params[:partenza], params[:arrivo]).take
    if find.blank?            # TRUE for "empty" or "nil"
      @statistic = Statistic.new(:partenza => params[:partenza], :arrivo => params[:arrivo])
      @statistic.save
    else
      find.conteggio = find.conteggio + 1
      find.save
    end
  end

  # PATCH/PUT /statistics/1
  # PATCH/PUT /statistics/1.json //NOT USED FOR NOW
  ##
  ## def update
  ##  respond_to do |format|
  ##    if @statistic.update(statistic_params)
  ##      format.html { redirect_to @statistic, notice: 'Statistic was successfully updated.' }
  ##      format.json { render :show, status: :ok, location: @statistic }
  ##    else
  ##      format.html { render :edit }
  ##     format.json { render json: @statistic.errors, status: :unprocessable_entity }
  ##   end
  ##  end
  ##end

  # DELETE /statistics/1
  # DELETE /statistics/1.json
  def destroy
    @statistic.destroy
    respond_to do |format|
      format.html { redirect_to statistics_url, notice: 'Statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_params
      params.fetch(:statistic, {})
    end
end
