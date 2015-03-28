OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "871766232866232", "93aa8943f89a2d0877477eb8d88ee7e4"
end
