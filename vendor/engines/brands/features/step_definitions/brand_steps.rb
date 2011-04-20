Given /^I have no brands$/ do
  Brand.delete_all
end

Given /^I (only )?have brands titled "?([^\"]*)"?$/ do |only, titles|
  Brand.delete_all if only
  titles.split(', ').each do |title|
    Brand.create(:name => title)
  end
end

Then /^I should have ([0-9]+) brands?$/ do |count|
  Brand.count.should == count.to_i
end
