# collection :users do
#   entity     User
#   repository UserRepository
#
#   attribute :id,   Integer
#   attribute :name, String
# end

collection :messages do
  entity     Message
  repository MessageRepository

  attribute :id,     Integer
  attribute :title,  String
  attribute :text,   String
end
