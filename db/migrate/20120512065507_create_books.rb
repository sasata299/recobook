class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.text :summary
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
