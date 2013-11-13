Given(/^the following movies exist:$/) do |movies_table|
	movies_table.hashes.each do |movie|
		Movie.create!(movie)		
	end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |title, director_name|
  #assert page.body =~ /(#{arg1}|#{arg2})/m
  movie = Movie.find_by_title(title)
  movie.director.should == director_name
end

