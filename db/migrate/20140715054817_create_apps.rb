class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.references :app_dictionary_entry, index: true
      t.references :cloud, index: true

      t.timestamps
    end
  end
end
