class AddDealerClaimsIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :dealer_claims_id, :integer
  end
end
