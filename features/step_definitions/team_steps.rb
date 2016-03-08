Given(/^Team "([^"]*)" exists$/) do |teamname|
  t = Team.new
  t.name = teamname
  t.save
end
