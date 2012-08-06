config_file = Rails.root.join('config/auth.yml')

if File.exists? config_file
  AUTH_CONFIG = YAML::load_file(config_file)
else
  AUTH_CONFIG = {
    'login' => ENV['AUTH_LOGIN'],
    'password' => ENV['AUTH_PWD']
  }
end
