class DealerClaimsController < ApplicationController
  # GET /dealer_claims
  # GET /dealer_claims.json
  def index
    @dealer_claims = DealerClaim.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dealer_claims }
    end
  end

  # GET /dealer_claims/1
  # GET /dealer_claims/1.json
  def show
    @dealer_claim = DealerClaim.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealer_claim }
    end
  end

  # GET /dealer_claims/new
  # GET /dealer_claims/new.json
  def new
    @dealer_claim = DealerClaim.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealer_claim }
    end
  end

  # GET /dealer_claims/1/edit
  def edit
    @dealer_claim = DealerClaim.find(params[:id])
  end

  # POST /dealer_claims
  # POST /dealer_claims.json
  def create
    @dealer_claim = DealerClaim.new(params[:dealer_claim])

    respond_to do |format|
      if @dealer_claim.save
        format.html { redirect_to @dealer_claim, notice: 'Dealer claim was successfully created.' }
        format.json { render json: @dealer_claim, status: :created, location: @dealer_claim }
      else
        format.html { render action: "new" }
        format.json { render json: @dealer_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealer_claims/1
  # PUT /dealer_claims/1.json
  def update
    @dealer_claim = DealerClaim.find(params[:id])

    respond_to do |format|
      if @dealer_claim.update_attributes(params[:dealer_claim])
        format.html { redirect_to @dealer_claim, notice: 'Dealer claim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealer_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_claims/1
  # DELETE /dealer_claims/1.json
  def destroy
    @dealer_claim = DealerClaim.find(params[:id])
    @dealer_claim.destroy

    respond_to do |format|
      format.html { redirect_to dealer_claims_url }
      format.json { head :no_content }
    end
  end
end
