class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :dealer_claim
  attr_accessible :summary, :type
end
