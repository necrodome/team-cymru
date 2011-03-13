require 'twitter'

module Cymru
	class TwitterFeed
		attr_reader :messages
		def initialize
			@twitname = "teamcymru"
			@messages = []
			Twitter.user_timeline(@twitname).each do |m|
				@messages << [m.created_at,m.text]
			end
		end
		
		def refresh
			@messages = []
			Twitter.user_timeline(@twitname).each do |m|
				@messages << [m.created_at,m.text]
			end
			@messages
		end
	end
end
