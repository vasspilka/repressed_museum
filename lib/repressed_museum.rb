require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/repressed_museum/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/repressed_museum_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/repressed_museum_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/repressed_museum_development'
  #    adapter type: :sql, uri: 'mysql://localhost/repressed_museum_development'
  #
  adapter type: :sql, uri: ENV['REPRESSED_MUSEUM_DATABASE_URL']

  # Migrations
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping
  # Intended for specifying application wide mappings.
  # You can specify mapping file to load with:
  mapping "#{__dir__}/config/mapping"

end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/repressed_museum/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :stmp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
