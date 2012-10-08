require 'spec_helper'

describe "DealerClaims" do
  describe "GET /dealer_claims" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get dealer_claims_path
      response.status.should be(200)
    end
  end
end
