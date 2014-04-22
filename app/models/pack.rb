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

class Pack < ActiveRecord::Base
	belongs_to :user
end
