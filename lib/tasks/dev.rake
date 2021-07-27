# frozen_string_literal: true

if Rails.env.development? || Rails.env.test?
  namespace :dev do
    desc 'Sample data for local development environment'
    task prime: %w[db:drop db:setup] do
      Hero.destroy_all

      Hero.create(
        name: "Daredevil",
        image: "http://i.annihil.us/u/prod/marvel/i/mg/6/90/537ba6d49472b/standard_xlarge.jpg",
        str: 2,
        int: 7,
        agi: 9,
        luk: 7
      )
      Hero.create(
        name: "Thor",
        image: "http://x.annihil.us/u/prod/marvel/i/mg/5/a0/537bc7036ab02/standard_xlarge.jpg",
        str: 2,
        int: 7,
        agi: 9,
        luk: 7
      )
      Hero.create(
        name: "Hulk",
        image: "http://i.annihil.us/u/prod/marvel/i/mg/6/90/537ba6d49472b/standard_xlarge.jpg",
        str: 2,
        int: 7,
        agi: 9,
        luk: 7
      )
      Hero.create(
        name: "Spiderman",
        image: "http://i.annihil.us/u/prod/marvel/i/mg/6/90/537ba6d49472b/standard_xlarge.jpg",
        str: 2,
        int: 7,
        agi: 9,
        luk: 7
      )
    end
  end
end