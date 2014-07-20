class LostAccountsController < ApplicationController
  before_action :set_lost_account, only: [:show, :edit, :update, :destroy]

  # GET /lost_accounts
  # GET /lost_accounts.json
  def index
    @lost_accounts = LostAccount.all
  end

  # GET /lost_accounts/1
  # GET /lost_accounts/1.json
  def show
  end

  # GET /lost_accounts/new
  def new
    @lost_account = LostAccount.new
  end

  # GET /lost_accounts/1/edit
  def edit
  end

  # POST /lost_accounts
  # POST /lost_accounts.json
  def create
    @lost_account = LostAccount.new(lost_account_params)

    respond_to do |format|
      if @lost_account.save
        format.html { redirect_to @lost_account, notice: 'Lost account was successfully created.' }
        format.json { render :show, status: :created, location: @lost_account }
      else
        format.html { render :new }
        format.json { render json: @lost_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_accounts/1
  # PATCH/PUT /lost_accounts/1.json
  def update
    respond_to do |format|
      if @lost_account.update(lost_account_params)
        format.html { redirect_to @lost_account, notice: 'Lost account was successfully updated.' }
        format.json { render :show, status: :ok, location: @lost_account }
      else
        format.html { render :edit }
        format.json { render json: @lost_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_accounts/1
  # DELETE /lost_accounts/1.json
  def destroy
    @lost_account.destroy
    respond_to do |format|
      format.html { redirect_to lost_accounts_url, notice: 'Lost account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_account
      @lost_account = LostAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_account_params
      params.require(:lost_account).permit(:identifier)
    end
end
