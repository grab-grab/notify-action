#!/usr/bin/env ruby

require "net/http"
require "uri"
require "json"


uri = URI.parse(ARGV[0])

headers = {
  "Content-Type": "application/json"
}

payload = {
  workflow: ENV["GITHUB_WORKFLOW"],
	repository: ENV["GITHUB_REPOSITORY"],
	revision: ENV["GITHUB_SHA"]
}

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri.request_uri, headers)
request.body = payload.to_json

response = http.request(request)

unless response.is_a?(Net::HTTPOK)
  puts "Unexpected response code: #{response.code}: #{response.body.to_s}"
  exit(1)
end

exit(0)
