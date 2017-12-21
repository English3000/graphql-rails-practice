Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allLinks, !types[Types::LinkType] do
    resolve -> (obj, args, ctx) { Link.all }
  end

end
# field :president do
#   resolve -> (obj, args, ctx) { Resolvers::FindPresident.new }
# end

=begin

check what you’ve done so far! For this, you’ll use GraphiQL, an in-browser IDE for running GraphQL queries.

GraphiQL had already been added to your application when you executed rails generate graphql:install in the terminal before, so you don’t have to do any extra work to set it up.

Open your browser at http://localhost:3000/graphiql

FRONTEND: https://www.howtographql.com/react-apollo/5-authentication/
BACKEND: https://www.howtographql.com/graphql-ruby/4-authentication/
Resource: http://graphql-ruby.org/getting_started

=end
