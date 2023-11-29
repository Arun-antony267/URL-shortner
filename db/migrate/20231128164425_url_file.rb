class UrlFile < ActiveRecord::Migration[7.0]
  def change
    create_table :url_file do |t|
      t.string :file_name
      t.string :attachment 
      t.timestamps
    end
  end
end
