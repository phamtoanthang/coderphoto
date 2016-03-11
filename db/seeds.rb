1000.times do
Photo.create({:username => Faker::Internet.user_name,
	:caption => Faker::Commerce.product_name,
	:created_at => Time.at(14447197352).utc.to_datetime, 
	:url => "http://lorempixel.com/200/200/",
	:likes_count => Faker::Number.digit})
end

Photo.all.each do |photo|
    rand(10).times do
      photo.comments.create(:body => Faker::StarWars.quote)
    end
end