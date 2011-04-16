class CreateAgents < ActiveRecord::Migration

  def self.up
    create_table :agents do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.integer :position

      t.timestamps
    end

    add_index :agents, :id

    load(Rails.root.join('db', 'seeds', 'agents.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "agents"})

    Page.delete_all({:link_url => "/agents"})

    drop_table :agents
  end

end
