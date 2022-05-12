
worker_processes (ENV["WEB_CONCURRENCY"] || 3).to_i
timeout (ENV["WEB_TIMEOUT"] || 15).to_i
preload_app true

before_fork do |server, worker|
  Signal.trap "TERM" do
    puts "Unicorn master intercepting TERM and sending myself QUIT instead"
    Process.kill "QUIT", Process.pid