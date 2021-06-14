require "faker"



80.times do

    Artist.create(name: Faker::Music.band)


end

80.times do 

    Genre.create(name: Faker::Music.genre)
end


80.times do 
    # genre = Faker::Music.genre
    # artist = Faker::Music.band
    # title = Faker::Music.album 
    # artist_id = rand(1..100)
    # genre_id = rand(1..100)
    Song.create(
        title: Faker::Music.album,
        artist_id: rand(1..80),
        genre_id: rand(1..80)
    )

    
end