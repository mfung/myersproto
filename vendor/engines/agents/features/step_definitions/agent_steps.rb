Given /^I have no agents$/ do
  Agent.delete_all
end

Given /^I (only )?have agents titled "?([^\"]*)"?$/ do |only, titles|
  Agent.delete_all if only
  titles.split(', ').each do |title|
    Agent.create(:name => title)
  end
end

Then /^I should have ([0-9]+) agents?$/ do |count|
  Agent.count.should == count.to_i
end
