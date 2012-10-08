class AddDealerClaimsIdIndexToReports < ActiveRecord::Migration
  def change
    add_index :reports, :dealer_claims_id
  end
end
