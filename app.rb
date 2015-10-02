require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/team')
require('./lib/member')
require('pry')

get('/') do
  erb(:index)
end

get('/teams/new') do
  erb(:teams_form)
end

get('/teams') do
  @teams = Team.all()
  erb(:teams)
end

post('/teams') do
  name = params.fetch('name')
  @team = Team.new({name: name})
  @team.save()
  @teams = Team.all()
  erb(:teams)
end

get ('/teams/:id') do
  @team = Team.find(params.fetch('id').to_i())
  erb(:team_profile)
end

post('/add_member') do
  new_member = params.fetch('member')
  team_member = Member.new({:member => new_member})
  id = params.fetch('team_id')
  @team = Team.find(id.to_i())
  @team.add_member(team_member)
  redirect('/teams/' + @team.id().to_s())
  erb(:team_profile)
end
