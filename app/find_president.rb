class Resolvers::FindPresident < GraphQL::Function
  argument :name, !types.String

  type Types::PresidentType

  def call(_obj, args, _ctx)
    President.where(`name LIKE %#{args[:name]}%`)
  end
end
