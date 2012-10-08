class DealerClaim < ActiveRecord::Base	
  attr_accessible :notified, :owner, :pareto_type, :received, :status, :summary

  belongs_to :report
  has_many :users

end
