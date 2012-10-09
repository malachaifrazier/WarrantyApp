class AddDealerClaimIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :dealer_claim_id, :integer
    add_index :reports, :dealer_claim_id
    
  end
end
