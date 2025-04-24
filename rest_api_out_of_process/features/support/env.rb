require 'childprocess'
require 'httparty'
require 'timeout'

server = ChildProcess.build("rackup", "--port", "4567")
server.start
Timeout.timeout(3) do
  loop do
    begin
      HTTParty.get('http://localhost:4567')
      break
    rescue Errno::ECONNREFUSED => try_again
      sleep 0.1
    end
  end
end

at_exit do
  server.stop
end