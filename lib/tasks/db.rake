require 'factory_girl'

namespace :db do
  desc "Populate the dev database with some sample data"
  task :populate, [:count] => [:environment] do |t, args|
    args.with_defaults(:count => 10)
    puts "Resetting the database"
    Rake::Task['db:reset'].invoke
    puts "Creating #{args[:count]} users"
    new_users = FactoryGirl.create_list(:user_with_orders, args[:count].to_i)
    # puts "Creating a product for each user"
    # new_users.each_with_index do |u|
    #   FactoryGirl.create(:order, user: u)
    # end
    FactoryGirl.create(:ingredient)
    puts "Done!"
  end
end