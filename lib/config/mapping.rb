collection :messages do
  entity     Message
  repository MessageRepository

  attribute :id,     Integer
  attribute :title,  String
  attribute :text,   String
end
