worker_processes Integer(ENV["WEB_CONCURRENCY"] || 2)
timeout 15
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'something something QUITing instead of TERMing'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'something something not TERMing, whatever, Heroku sucks.'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
