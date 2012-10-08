class CreateDealerClaims < ActiveRecord::Migration
  def change
    create_table :dealer_claims do |t|
      t.string :pareto_type
      t.text :summary
      t.string :owner
      t.boolean :status
      t.date :notified
      t.date :received

      t.timestamps
    end
  end
end
