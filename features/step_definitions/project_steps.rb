Given(/^there is a project called "(.*?)"$/) do |name|
  FactoryGirl.create(:project, :name => name)
end

When(/^I follow "(.*?)"$/) do  |name|
 click_link(name)
end

Then(/^I should be on the project page for "(.*?)"$/) do |name|
  page.should have_content(name)
end
