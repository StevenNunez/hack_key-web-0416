class CreateShortkeys < ActiveRecord::Migration
  def change
    create_table :shortkeys do |t|
      t.string :url
      t.string :key, index: true

      t.timestamps null: false
    end
  end
end
