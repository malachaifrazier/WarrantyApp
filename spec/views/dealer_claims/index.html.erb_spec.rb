require 'spec_helper'

describe "dealer_claims/index" do
  before(:each) do
    assign(:dealer_claims, [
      stub_model(DealerClaim,
        :pareto_type => "Pareto Type",
        :summary => "MyText",
        :owner => "Owner",
        :status => false
      ),
      stub_model(DealerClaim,
        :pareto_type => "Pareto Type",
        :summary => "MyText",
        :owner => "Owner",
        :status => false
      )
    ])
  end

  it "renders a list of dealer_claims" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pareto Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
