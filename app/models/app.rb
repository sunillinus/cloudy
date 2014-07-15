class App < ActiveRecord::Base
  belongs_to :app_dictionary_entry
  belongs_to :cloud
end
