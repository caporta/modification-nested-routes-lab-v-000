module SongsHelper
  def artist_select(song,f,artists)
    if song.artist.nil?
      f.collection_select :artist_id, artists, :id, :name
    else
      f.hidden_field :artist_id
    end
  end
end
