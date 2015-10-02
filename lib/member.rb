class Member

  attr_reader(:member)

  define_method(:initialize) do |attributes|
    @member = attributes.fetch(:member)
  end
end
