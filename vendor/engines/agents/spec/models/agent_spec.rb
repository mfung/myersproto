require 'spec_helper'

describe Agent do

  def reset_agent(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @agent.destroy! if @agent
    @agent = Agent.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_agent
  end

  context "validations" do
    
    it "rejects empty name" do
      Agent.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_agent
      Agent.new(@valid_attributes).should_not be_valid
    end
    
  end

end