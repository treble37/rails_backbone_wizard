class DataObject < ActiveRecord::Base
  serialize :data_record, Hash
end
