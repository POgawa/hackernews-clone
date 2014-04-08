class Vote < ActiveRecord::Base
  validates :post_id, presence: true
  validates :voted_for, presence: true
end
