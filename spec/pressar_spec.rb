require 'spec_helper'
require 'pressar'

describe Pressar do
  it 'should be instantiatable' do
    post = FactoryGirl.create :post
    # post = Pressar::Post.new
  end
end
