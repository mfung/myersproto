class CreateBrands < ActiveRecord::Migration

  def self.up
    create_table :brands do |t|
      t.string :name
      t.integer :logo_id
      t.text :description
      t.string :slug
      t.integer :position

      t.timestamps
    end

    add_index :brands, :id

    load(Rails.root.join('db', 'seeds', 'brands.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "brands"})

    Page.delete_all({:link_url => "/brands"})

    drop_table :brands
  end

end
