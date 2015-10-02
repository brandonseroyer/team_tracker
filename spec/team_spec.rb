require('rspec')
require('team')

describe('#all') do
  it('returns the team array empty') do
    expect(Team.all()).to(eq([]))
  end
end

describe('#clear') do
  it('clears the team array of entries') do
    test_team = Team.new({:name => 'Breaking Bad', :member => 'Walter White'})
    test_team.save()
    Team.clear()
    expect(Team.all()).to(eq([]))
  end
end

describe('#find') do
  it('finds a team based on its id') do
    test_team = Team.new({:name => 'Breaking Bad', :member => 'Walter White'})
    test_team.save()
    expect(Team.find(1)).to(eq(test_team))
  end
end

describe('#team') do
  it('returns a team name') do
    test_team = Team.new({:name => 'Breaking Bad'})
    expect(test_team.name()).to(eq('Breaking Bad'))
  end
end

describe('#save') do
  it('saves a team to the team array') do
    Team.clear()
    test_team = Team.new({:name => 'Breaking Bad', :member => 'Walter White'})
    test_team.save()
    expect(team.all()).to(eq([test_team]))
  end
end

describe('#add_member') do
  it('adds a member to a team') do
    test_team = Team.new({:name => 'Breaking Bad', :member => 'Walter White'})
    test_team.save()
    expect(test_team.add_member('Walter White')).to(eq(['Walter White']))
  end
end
