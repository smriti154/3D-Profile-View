require 'uri'
require 'csv'
require 'json'

class HomeController < ApplicationController

	def index
		puts "insde"
          @response1 = github_details('smriti154')
          puts ">>>>>>>>>>>.", @response1
		 # @response1 = HTTParty.get('https://github.com/smriti154')
		  # @response2 = HTTParty.get('https://api.stackexchange.com/2.2/users/22656?order=desc&sort=reputation&site=stackoverflow')

		  # @response3 = HTTParty.get('https://in.pinterest.com/smriti154/')

		  # @response4 = HTTParty.get('https://twitter.com/smriti')
		  job_posting = 'Senior Software Test Engineer Person should have very good hands on experience on Selenium. Person should have some experience on overall Selenium framework as well so that he is aware how the entire test automation process work on top of Selenium. Experience on Protractor test would be a plus. End to end automation experience. Person shoud be flexible to jump to do manual testing on need basis. Person may also need to guide junior manual QA.'
		  # result = `python public/temp.py`
		  # puts ".....", result
          # render :text => result
  #         @candidate = Candidate.find_by id: '12'
  #         puts "..............", @candidate.inspect
  # 		CSV.open("public/dataset.csv", "w") do |csv| #open new file for write
  # 			JSON.parse(File.open("public/text.json").read).each do |hash|
  #   	 		csv << hash.values
  # 			end
		# end

		
		# RubyPython.start
		# my_python_module = RubyPython.import('public/temp.py')
		# value = my_python_module.my_python_function().rubify
		# puts "..........", my_python_module
		# RubyPython.stop

		# result111 = `python public/temp.py /home/neeraj/Profile_View_3D/public/dataset.csv`
		# puts "..result111.777..", result111.class

	end

	def github_details(username)
		
    # response = HTTParty.get("https://api.stackexchange.com/2.2/users/:id?order=desc&sort=reputation&site=stackoverflow&id={username}")
	

    users = HTTParty.get("https://api.github.com/users/#{username}/repos")
    # @options = { query: { username: username } }
      puts "response from github", users.count
      users.count
  end

  
  def users
    
  end
    
    
end