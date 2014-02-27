class RewardsController < ApplicationController
  before_filter :load_project
  before_action :set_reward, only: [:show, :edit, :update, :destroy]

  # GET /rewards
  # GET /rewards.json
  def index
    @rewards = Reward.all
  end

  # GET /rewards/1
  # GET /rewards/1.json
  def show
  end

  # GET /rewards/new
  def new
    @reward = Reward.new
  end

  # GET /rewards/1/edit
  def edit
    @reward = Reward.find(params[:id])
  end

  # POST /rewards
  # POST /rewards.json
  def create
    # @reward = Reward.new(reward_params)
    @reward = @project.rewards.build(reward_params)
    # @reward.user_id = current_user.id

    respond_to do |format|
      if @reward.save
        format.html { redirect_to project_rewards_path, notice: 'Reward was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reward }
      else
        format.html { render action: 'new' }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rewards/1
  # PATCH/PUT /rewards/1.json
  def update
    respond_to do |format|
      if @reward.update(reward_params)
        format.html { redirect_to project_rewards_path, notice: 'Reward was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rewards/1
  # DELETE /rewards/1.json
  def destroy
    @reward.destroy
    respond_to do |format|
      format.html { redirect_to project_rewards_url, notice: 'Reward destroyed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = Reward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_params
      params.require(:reward).permit(:quantity, :description, :value)
    end

    def load_project
      @project = Project.find(params[:project_id])
    end
end
