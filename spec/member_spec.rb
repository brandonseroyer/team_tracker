require('rspec')
require('member')

describe(Member) do
  describe('#member') do
    it('returns member of a team') do
      new_member = Member.new({:member => 'Walter White'})
      expect(new_member.member()).to(eq('Walter White'))
    end
  end
end
