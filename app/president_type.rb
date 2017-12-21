Types::PresidentType = GraphQL::ObjectType.define do
  name "President"
  field :id, !types.ID
  field :name, types.String
  field :party, types.String
  field :term, types.String
end
