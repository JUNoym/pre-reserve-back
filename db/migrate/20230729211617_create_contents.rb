class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
