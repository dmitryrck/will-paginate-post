namespace :populate do
  desc 'Populate users'
  task :users => :environment do
    15.times do
      User.create :name => Faker::Name.name, :phone => Faker::PhoneNumber.phone_number
    end
  end
end
