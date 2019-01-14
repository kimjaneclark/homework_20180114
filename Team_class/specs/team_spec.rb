require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestTeam < MiniTest::Test

def test_team_name
  team = Team.new("Red Rovers","Finlay","Ken")
  assert_equal("Red Rovers", team.name)
end

def test_team_player
  team = Team.new("Clark Devils","Fraser","Kim")
  assert_equal("Fraser", team.players)
end

def test_team_coach
  team = Team.new("Red Rovers","Abi","Ken")
  assert_equal("Ken", team.coach)
end

def test_set_team_coach
  team = Team.new("Daleview Dragons","Tess","Zoe")
  team.coach = "Kim"
  assert_equal("Kim", team.coach)
end


end
