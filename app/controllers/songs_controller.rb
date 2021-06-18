class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    @songs = Song.all

    render json: SongSerializer.new(@songs)
  end

  # GET /songs/1
  def show
    render json: SongSerializer.new(@song)
  end

  # POST /songs
  def create
    song = Song.create(song_params)
    song.time_signature = TimeSignature.find_or_create_by(name: params[:time_signature])
    params[:measures].each do |measure|
      
      chord = Chord.find_or_create_by(
        name: measure[:name], 
        root: measure[:root],
        quality: measure[:quality]
      )


      m = Measure.create(song_id: song.id)
      m.chords << chord
    end
    
    
    if song
      render json: song, status: :created, location: song
    else
      render json: song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:title, :author, :tempo, :user_id, :time_signature, :measures)
    end
end
