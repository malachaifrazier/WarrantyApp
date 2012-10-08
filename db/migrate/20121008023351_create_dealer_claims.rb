class CreateDealerClaims < ActiveRecord::Migration
  def change
    create_table :dealer_claims do |t|
      t.string :pareto_type
      t.text :summary
      t.string :owner
      t.boolean :status
      t.date :notified
      t.date :received
      t.references :user
      t.references :report

      t.timestamps
    end
    add_index :dealer_claims, :user_id
    add_index :dealer_claims, :report_id
  end
end
