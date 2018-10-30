class PersonalStatisticsController < ApplicationController
  ## NOTE!!!!
  ## THIS CONTROLLER USES
  ## THE SAME VIEW OF
  ## "statistics_controller"
  ## EX => /statistics/index.html.erb (for GET)
  ## For this: accessing "/personal_statistics" route path will be th same of accessing "/statistics" path


  before_action :set_personal_statistic, only: [:show, :edit, :update, :destroy]

  # GET /personal_statistics
  # GET /personal_statistics.json
  def index
    @personal_statistics = PersonalStatistic.all
    @statistics = Statistic.all
    render :template => "/statistics/index"
  end

  # GET /personal_statistics/1
  # GET /personal_statistics/1.json    //NOT USED FOR NOW.
  ##def show
  ## end

  # GET /personal_statistics/new       //NOT USED FOR NOW
  ##def new
  ##  @personal_statistic = PersonalStatistic.new
  ##end

  # GET /personal_statistics/1/edit //NOT USED FOR NOW
  ##def edit
  ##end

  # POST /personal_statistics
  # POST /personal_statistics.json

  def create
    find = PersonalStatistic.where("partenza = ? AND arrivo = ? AND email = ?", params[:partenza], params[:arrivo], params[:email]).take
    if find.blank?            # TRUE for "empty" or "nil"
      @personal_statistic = PersonalStatistic.new(:partenza => params[:partenza], :arrivo => params[:arrivo], :email => params[:email])
      @personal_statistic.save
    else
      find.conteggio = find.conteggio + 1
      find.save
    end
  end

  # PATCH/PUT /personal_statistics/1
  # PATCH/PUT /personal_statistics/1.json //NOT USED FOR NOW
  ##def update
  ##  respond_to do |format|
  ##    if @personal_statistic.update(personal_statistic_params)
  ##      format.html { redirect_to @personal_statistic, notice: 'Personal statistic was successfully updated.' }
  ##      format.json { render :show, status: :ok, location: @personal_statistic }
  ##    else
  ##      format.html { render :edit }
  ##      format.json { render json: @personal_statistic.errors, status: :unprocessable_entity }
  ##    end
  ##  end
  ##end

  # DELETE /personal_statistics/1
  # DELETE /personal_statistics/1.json //IMPLEMENTING: a logged user should destroy/hide a personal statistic
  def destroy
    @personal_statistic.destroy
    respond_to do |format|
      format.html { redirect_to personal_statistics_url, notice: 'Personal statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_statistic
      @personal_statistic = PersonalStatistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_statistic_params
      params.require(:personal_statistic).permit(:conteggio, :partenza, :arrivo, :email)
    end
end
