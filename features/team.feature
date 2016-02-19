Feature: Team
    In order to recognize, where users belong to
    I want people to register and join teams

    Scenario: Create a team
        Given I am on the home page
        And I am a logged in user
        And I follow "Join/Create Team"
        When I fill in "Teamname" with "AFC Vienna Knights"
        And I press "Publish"
        Then I should see "Team created"
        And I should see "AFC Vienna Knights"