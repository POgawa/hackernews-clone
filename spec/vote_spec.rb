require 'spec_helper'

describe Vote do
  it {should validate_presence_of :post_id}
  it {should validate_presence_of :voted_for}
end
