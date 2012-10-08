require 'spec_helper'

describe "dealer_claims/new" do
  before(:each) do
    assign(:dealer_claim, stub_model(DealerClaim,
      :pareto_type => "MyString",
      :summary => "MyText",
      :owner => "MyString",
      :status => false
    ).as_new_record)
  end

  it "renders new dealer_claim form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dealer_claims_path, :method => "post" do
      assert_select "input#dealer_claim_pareto_type", :name => "dealer_claim[pareto_type]"
      assert_select "textarea#dealer_claim_summary", :name => "dealer_claim[summary]"
      assert_select "input#dealer_claim_owner", :name => "dealer_claim[owner]"
      assert_select "input#dealer_claim_status", :name => "dealer_claim[status]"
    end
  end
end
