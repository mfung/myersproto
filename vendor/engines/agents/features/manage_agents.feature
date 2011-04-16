@agents
Feature: Agents
  In order to have agents on my website
  As an administrator
  I want to manage agents

  Background:
    Given I am a logged in refinery user
    And I have no agents

  @agents-list @list
  Scenario: Agents List
   Given I have agents titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of agents
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @agents-valid @valid
  Scenario: Create Valid Agent
    When I go to the list of agents
    And I follow "Add New Agent"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 agent

  @agents-invalid @invalid
  Scenario: Create Invalid Agent (without name)
    When I go to the list of agents
    And I follow "Add New Agent"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 agents

  @agents-edit @edit
  Scenario: Edit Existing Agent
    Given I have agents titled "A name"
    When I go to the list of agents
    And I follow "Edit this agent" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of agents
    And I should not see "A name"

  @agents-duplicate @duplicate
  Scenario: Create Duplicate Agent
    Given I only have agents titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of agents
    And I follow "Add New Agent"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 agents

  @agents-delete @delete
  Scenario: Delete Agent
    Given I only have agents titled UniqueTitleOne
    When I go to the list of agents
    And I follow "Remove this agent forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 agents
 