class CreateShortenedUrlsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.integer :owner_id
      t.string :owner_type, limit: 20
      t.text :url, null: false
      t.string :unique_key, limit: 10, null: false
      t.integer :use_count, null: false, default: 0
      t.datetime :expires_at

      t.timestamps
    end


    add_index :shortened_urls, :unique_key, unique: true
    add_index :shortened_urls, :url
    add_index :shortened_urls, [:owner_id, :owner_type]
  end
end
