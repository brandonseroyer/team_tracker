class Team

  @@teams = []

  attr_reader(:name, :members)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@teams.length().+(1)
    @members = []
  end

  define_method(:id) do
    @id
  end
  define_singleton_method(:all) do
  @@teams
  end

  define_method(:save) do
    @@teams.push(self)
  end

  define_singleton_method(:clear) do
    @@teams = []
  end

  define_singleton_method(:find) do |id|
    found_team = nil
    @@teams.each() do |team|
      if team.id().eql?(id)
        found_team = team
      end
    end
    found_team
  end
  define_method(:add_member) do |team_member|
  @members.push(team_member)
  end
end
