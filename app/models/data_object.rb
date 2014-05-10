# == Schema Information
#
# Table name: data_objects
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  data_record :text
#

class DataObject < ActiveRecord::Base
  serialize :data_record, Hash
end
