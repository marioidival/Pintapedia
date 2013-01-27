OmniAuth.config.logger = Rails.logger
#OmniAuth.config.on_failure = Proc.new do |env|
 # "UsersController".constantize.action(:omniauth_failure).call(env)
#end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '298959990206488','b6a8385aa6db147b8e46977511255590',:display => "popup"
end

