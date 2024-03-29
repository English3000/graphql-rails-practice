class Resolvers::CreateUser < GraphQL::Function
  AuthProviderInput = GraphQL::InputObjectType.define do
    name 'AuthProviderSignupData'
    argument :email, Types::AuthProvider
  end

  argument :name, !types.String
  argument :authProvider, !AuthProviderInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(name: args[:name],
                 email: args[:authProvider][:email][:email],
                 email: args[:authProvider][:email][:password])
  end
end
