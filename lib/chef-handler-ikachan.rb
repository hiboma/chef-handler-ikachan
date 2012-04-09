require 'chef'
require 'chef/handler'
require 'string-irc'
require 'net/http'
require 'uri'

class IkachanHandler < Chef::Handler

  def initialize(url, channel)
    @url     = url
    @channel = channel
  end

  def report
    begin
      timeout(10) do
        format   = sprintf "Chef Exception: %s - %s", node.hostname, run_status.formatted_exception
        message  = StringIrc.new(format).pink
        response = Net::HTTP.post_form(URI.parse(@url), {
          "channel" => @channel,
          "message" => message,
        })
      end
    rescue Timeout::Error
      Chef::Log.error("Timed out while attempting to POST #{@url}")
    end
  end
end
