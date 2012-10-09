class RemoveDealerClaimsIdToReports < ActiveRecord::Migration
  def up
    remove_column :reports, :dealer_claims_id
  end

  def down
    add_column :reports, :dealer_claims_id, :integer
  end
end
