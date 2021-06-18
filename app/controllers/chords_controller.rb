class ChordsController < ApplicationController
  before_action :set_chord, only: [:show, :update, :destroy]

  # GET /chords
  def index
    @chords = Chord.all

    render json: ChordSerializer.new(@chords)
  end

  # GET /chords/1
  def show
    render json: ChordSerializer.new(@chord)
  end

  # POST /chords
  def create
    @chord = Chord.new(chord_params)

    if @chord.save
      render json: @chord, status: :created, location: @chord
    else
      render json: @chord.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chords/1
  def update
    if @chord.update(chord_params)
      render json: @chord
    else
      render json: @chord.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chords/1
  def destroy
    @chord.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chord
      @chord = Chord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chord_params
      params.require(:chord).permit(:name, :quality, :root)
    end
end
