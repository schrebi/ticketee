Given(/^there is a project called "(.*?)"$/) do |name|
  @project = FactoryGirl.create(:project, :name => name)
end

When(/^I follow "(.*?)"$/) do  |name|
 click_link(name)
end

Then(/^I should be on the project page for "(.*?)"$/) do |name|
  page.should have_content(name)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
 fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should_not have_content(arg1)
end
