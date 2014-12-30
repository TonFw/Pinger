require 'colorize'

# Create it namespace for the task scope
namespace :ping do
  # The task
  task scheduleds: :environment do
    # Require de scheduler gem
    require 'rubygems'
    require 'rufus-scheduler'

    # Create a new scheduler Thread
    scheduler = Rufus::Scheduler.new

    # Feedback on the terminal
    puts "The ping:scheduled task is waiting...".colorize(:yellow)

    # Run every time passed here as string
    scheduler.every '5s' do
      # Running the Scheduleds
      puts 'Hello there'.green
    end

    # Add it scheduler to the processes pile
    scheduler.join
  end
end
