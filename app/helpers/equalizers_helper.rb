module EqualizersHelper

    def display_header(equalizer)
        if params[:artist_id]
            content_tag(:h1, "Add an EQ Save State for #{equalizer.artist.artist_name} - #{equalizer.artist.genre.name}")
        else
            content_tag(:h1, "Create New Equalizer Settings")
        end
    end
end
