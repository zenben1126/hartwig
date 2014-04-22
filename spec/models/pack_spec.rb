# == Schema Information
#
# Table name: packs
#
#  id         :integer          not null, primary key
#  created_on :date
#  packs      :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Pack do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @pack = Pack.new(packs: "2", user_id: user.id)
  end

  subject { @pack }

  it { should respond_to(:packs) }
  it { should respond_to(:user_id) }
end
