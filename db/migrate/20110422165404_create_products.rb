class CreateProducts < ActiveRecord::Migration

  def self.up
    create_table :products do |t|
      t.integer :brand_category_id
      t.string :name
      t.text :description
      t.string :brochure_path_id
      t.string :cutsheet_path_id
      t.string :drawing_path_id
      t.string :specsheet_path_id
      t.string :user_manual_path_id
      t.string :instruction_manual_path_id
      t.integer :picture1_path_id
      t.integer :picture2_path_id
      t.integer :picture3_path_id
      t.integer :picture4_path_id
      t.string :picture1_thumb
      t.string :picture2_thumb
      t.string :picture3_thumb
      t.string :picture4_thumb
      t.integer :position

      t.timestamps
    end

    add_index :products, :id

    load(Rails.root.join('db', 'seeds', 'products.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "products"})

    Page.delete_all({:link_url => "/products"})

    drop_table :products
  end

end
