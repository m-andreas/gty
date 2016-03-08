include Warden::Test::Helpers
Warden.test_mode!

Given(/^I am a logged in user$/) do
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)
end

Given(/^I follow "([^"]*)"$/) do |link_name|
  click_link("#{link_name}")
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in("#{field}", :with => "#{value}")
end

When(/^I press "([^"]*)"$/) do |button_name|
  click_button("#{button_name}")
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content "#{content}"
end

When(/^I choose "([^"]*)" from "([^"]*)"$/) do |option, select_box|
  select("#{option}", :from => "#{select_box}")
end


Then /^show me the page$/ do
  save_and_open_page
end