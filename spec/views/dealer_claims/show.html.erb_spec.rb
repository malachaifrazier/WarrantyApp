require 'spec_helper'

describe "dealer_claims/show" do
  before(:each) do
    @dealer_claim = assign(:dealer_claim, stub_model(DealerClaim,
      :pareto_type => "Pareto Type",
      :summary => "MyText",
      :owner => "Owner",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pareto Type/)
    rendered.should match(/MyText/)
    rendered.should match(/Owner/)
    rendered.should match(/false/)
  end
end
