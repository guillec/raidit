Feature: Viewing a Raid

  Scenario: Can view a raid from the raid calendar
    Given today is "2012/04/01"
    And "raid_leader" has the following characters
      | name    | guild |
      | Wonko   | Exiled |
    When "Exiled" has scheduled the following raids
      | where       | when       | start | invite_offset | tank | heal | dps |
      | ICC         | 2012/04/01 | 20:00 | 15            | 10   | 1    | 3   |

    When I am signed in as "raid_leader"
    And I follow "ICC"

    Then I should see "April 1, 2012"
    And I should see "7:45 PM"
    And I should see "Starts at 8:00 PM"
    And I should see "ICC"

  Scenario: Can view a raid from the Raids page
    Given today is "2012/04/01"
    And "raid_leader" has the following characters
      | name    | guild |
      | Wonko   | Exiled |
    When "Exiled" has scheduled the following raids
      | where       | when       | start | invite_offset | tank | heal | dps |
      | ICC         | 2012/04/01 | 20:00 | 15            | 10   | 1    | 3   |

    When I am signed in as "raid_leader"
    And I follow "Raids"
    And I follow "View"

    Then I should see "Starts at"
