class Report < ActiveRecord::Base
  belongs_to :user
  attr_accessible :summary, :type
end
