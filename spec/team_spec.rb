require('rspec')
require('team')

describe('#all') do
  it('returns the team array empty') do
    expect(Team.all()).to(eq([]))
  end
end

describe('#team') do
  it('returns a team name') do
    test_team = Team.new({:name => "Breaking Bad"})
    expect(test_team.name()).to(eq("Breaking Bad"))
  end
end

describe('#add_member') do
  it('adds a member to a team') do
    new_team = Team.new({:name => 'Breaking Bad', :definition => 'Walter White'})
    new_team.save()
    expect(new_team.add_member('Walter White')).to(eq(['Walter White']))
  end
end
