ROM::Rails::Railtie.configure do |config|
  opts = {
      username: 'postgres',
      password: 'secret',
      encoding: 'UTF8',
      not_inferrable_relations: [:schema_migrations]
  }

  config.gateways[:default] = [
      :sql, 'postgres://localhost', opts
  ]
end