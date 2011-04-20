class CreateBrandsCarrieds < ActiveRecord::Migration
  def self.up
    create_table :brands_carrieds, :id => false do |t|
      t.integer :agent_id
      t.integer :brand_id
      t.timestamps
    end
  end

  def self.down
    drop_table :brands_carrieds
  end
end
