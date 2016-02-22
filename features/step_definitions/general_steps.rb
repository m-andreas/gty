Given(/^I am a logged in user$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
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

Then /^show me the page$/ do
  save_and_open_page
end