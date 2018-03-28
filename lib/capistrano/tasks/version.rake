namespace :version do

  desc 'Sets git revision hash, branch and app environment constants'
  task :setup do
    on roles(:app) do
      info 'setting git and versions variables in version initializer file'
      template_path = File.expand_path('../../templates/version.erb', __FILE__)
      template = ERB.new(File.new(template_path).read).result(binding)
      upload! StringIO.new(template), "#{current_path}/config/initializers/version.rb"
    end
  end

end
