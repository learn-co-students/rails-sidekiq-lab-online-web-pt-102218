require 'csv'

class SongsWorker
    include Sidekiq::Worker

    def perform(songs_file)
        CSV.foreach(songs_file, headers: true) do |song|
            s = Song.find_or_create_by(title: song[0])
            a = Artist.create(name: song[1])
            s.artist_id = a
        end
    end
end