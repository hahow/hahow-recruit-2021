# frozen_string_literal: true

if Rails.env.development? || Rails.env.test?
  # require 'factory_bot'

  namespace :dev do
    desc 'Sample data for local development environment'
    task prime: %w[db:drop db:setup] do
      # include FactoryBot::Syntax::Methods
    end
  end
end