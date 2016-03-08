Feature: Team
    In order to recognize, where users belong to
    I want people to register and join teams

    Scenario: Create a team
        Given I am on the home page
        And I am a logged in user
        And I follow "Create Team"
        When I fill in "Name" with "AFC Vienna Knights"
        And I press "Create Team"
        Then I should see "Team created"
        And I should see "AFC Vienna Knights"

    Scenario: Join a team
        Given I am on the home page
        And Team "Vienna Knights" exists
        And I am a logged in user
        And I follow "Join Team"
        When I choose "Vienna Knights" from "membership_team"
        And I press "Join Team"
        Then I should see "Request sent"
        And I should see "Vienna Knights"
        And I should see "to_approve"