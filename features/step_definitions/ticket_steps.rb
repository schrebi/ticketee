Given(/^that project has a ticket:$/) do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end
Given(/^there is project called "(.*?)"$/) do |name| 
  @project = FactoryGirl.create(:project, :name => name)
end
