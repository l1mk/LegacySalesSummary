Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end