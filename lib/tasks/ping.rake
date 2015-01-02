require 'colorize'
require 'rest-client'

# Create it namespace for the task scope
namespace :ping do
  # The task
  task schedules: :environment do
    # Require de scheduler gem
    require 'rubygems'
    require 'rufus-scheduler'

    # Create a new scheduler Thread
    scheduler = Rufus::Scheduler.new

    # Feedback on the terminal
    puts "The ping:schedules task is waiting...".light_blue

    # Run every time passed here as string
    scheduler.every '15s' do
      # base vars & starts
      puts 'Scheduled running pings'.green
      current_hour = Time.now.hour

      # Run the Pings
      targets = Target.all #.joins(:schedules).where("schedules.hour LIKE '#{current_hour}'")
      targets.each do |target|
        begin
          resp = RestClient.get target.url
          resp_code = resp.code.to_i
        rescue Exception => e
          puts "Error: #{e}"
          resp_code = e.to_s[0..2].to_i
        end

        # between 200 (success) & 300 (redirect) are okay resp
        if resp_code >= 400
          # SetUp timeouts codes
          timeouts = []
          HttpConst.codes.keys.each do |code_name|
            code_name = code_name.to_s.downcase
            timeouts << code_name unless code_name.index('time').nil?
          end

          # Resend it Ping
          timeouts.each do |timeout|
            if resp_code == HttpConst.codes[:"#{timeout}"]
              resp = RestClient.get(target.url)
              resp_code = resp.code.to_i
            end
          end
        end

        current_schedule = target.schedules.where(hour:current_hour).take
        ping = Ping.create(http_code:resp_code, target_id:target.id, schedule_id:1) #current_schedule.id
        ping.errors.messages.empty? ? print_str = "Ping created: #{ping}".green : print_str = "Ping not created: #{ping}".red
        puts print_str
      end

      # teardown rake
      puts 'Scheduled pings executed'.light_yellow
      system('rake blank')
    end

    # Add it scheduler to the processes pile
    scheduler.join
  end
end
