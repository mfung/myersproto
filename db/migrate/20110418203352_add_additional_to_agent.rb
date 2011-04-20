class AddAdditionalToAgent < ActiveRecord::Migration
  def self.up
    change_table :agents do |t|
      t.string :company
      t.string :territory
      t.string :fax
      t.string :url
    end
  end

  def self.down
    change_table :agents do |t|
      t.remove :company
      t.remove :territory
      t.remove :fax
      t.remove :url
    end
  end
end
