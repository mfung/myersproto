class CreateBrandCategories < ActiveRecord::Migration
  def self.up
    create_table :brand_categories do |t|
      t.integer :brand_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :brand_categories
  end
end
