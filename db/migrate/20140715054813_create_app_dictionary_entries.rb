class CreateAppDictionaryEntries < ActiveRecord::Migration
  def change
    create_table :app_dictionary_entries do |t|
      t.string :name

      t.timestamps
    end
  end
end
