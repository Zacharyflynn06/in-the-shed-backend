# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User
User.create(first_name: "Zac", last_name: "Flynn")

# Songs
Song.create(title: "Stir It Up", author: "Bob Marley", tempo: 100, user_id: 1)

# Time Signitures
TimeSigniture.create([{name: "4/4"}, {name: "3/4"}, {name:"2/4"}, {name: "5/4"}, {name: "6/4"}])

# Chords
# Major Triads
Chord.create([{name: "A" }, {name: "A#"}, {name: "Bb"}, {name: "B"}, {name: "C"}, {name: "C#"}, {name: "Db"}, {name: "D"}, {name: "D#"}, {name: "Eb"}, {name: "E"}, {name: "F"}, {name: "F#"}, {name: "Gb"}, {name: "G"}, {name: "G#"}])

# Minor Triads
Chord.create([{name: "Amin" }, {name: "A#min"}, {name: "Bbmin"}, {name: "Bmin"}, {name: "Cmin"}, {name: "C#min"}, {name: "Dbmin"}, {name: "Dmin"}, {name: "D#min"}, {name: "Ebmin"}, {name: "Emin"}, {name: "Fmin"}, {name: "F#min"}, {name: "Gbmin"}, {name: "Gmin"}, {name: "G#min"}])

# Diminished Triads
Chord.create([{name: "Adim" }, {name: "A#dim"}, {name: "Bbdim"}, {name: "Bdim"}, {name: "Cdim"}, {name: "C#dim"}, {name: "Dbdim"}, {name: "Ddim"}, {name: "D#dim"}, {name: "Ebdim"}, {name: "Edim"}, {name: "Fdim"}, {name: "F#dim"}, {name: "Gbdim"}, {name: "Gdim"}, {name: "G#dim"}])

# Augmented Triads
Chord.create([{name: "Aaug" }, {name: "A#aug"}, {name: "Bbaug"}, {name: "Baug"}, {name: "Caug"}, {name: "C#aug"}, {name: "Dbaug"}, {name: "Daug"}, {name: "D#aug"}, {name: "Ebaug"}, {name: "Eaug"}, {name: "Faug"}, {name: "F#aug"}, {name: "Gbaug"}, {name: "Gaug"}, {name: "G#aug"}])

# Dominant
Chord.create([{name: "A7" }, {name: "A#7"}, {name: "Bb7"}, {name: "B7"}, {name: "C7"}, {name: "C#7"}, {name: "Db7"}, {name: "D7"}, {name: "D#7"}, {name: "Eb7"}, {name: "E7"}, {name: "F7"}, {name: "F#7"}, {name: "Gb7"}, {name: "G7"}, {name: "G#7"}])

# Maj7
Chord.create([{name: "Amaj7" }, {name: "A#maj7"}, {name: "Bbmaj7"}, {name: "Bmaj7"}, {name: "Cmaj7"}, {name: "C#maj7"}, {name: "Dbmaj7"}, {name: "Dmaj7"}, {name: "D#maj7"}, {name: "Ebmaj7"}, {name: "Emaj7"}, {name: "Fmaj7"}, {name: "F#maj7"}, {name: "Gbmaj7"}, {name: "Gmaj7"}, {name: "G#maj7"}])

# min7
Chord.create([{name: "Amin7" }, {name: "A#min7"}, {name: "Bbmin7"}, {name: "Bmin7"}, {name: "Cmin7"}, {name: "C#min7"}, {name: "Dbmin7"}, {name: "Dmin7"}, {name: "D#min7"}, {name: "Ebmin7"}, {name: "Emin7"}, {name: "Fmin7"}, {name: "F#min7"}, {name: "Gbmin7"}, {name: "Gmin7"}, {name: "G#min7"}])

# min7b5
Chord.create([{name: "Amin7b5" }, {name: "A#min7b5"}, {name: "Bbmin7b5"}, {name: "Bmin7b5"}, {name: "Cmin7b5"}, {name: "C#min7b5"}, {name: "Dbmin7b5"}, {name: "Dmin7b5"}, {name: "D#min7b5"}, {name: "Ebmin7b5"}, {name: "Emin7b5"}, {name: "Fmin7b5"}, {name: "F#min7b5"}, {name: "Gbmin7b5"}, {name: "Gmin7b5"}, {name: "G#min7b5"}])

# dim7
Chord.create([{name: "Adim7" }, {name: "A#dim7"}, {name: "Bbdim7"}, {name: "Bdim7"}, {name: "Cdim7"}, {name: "C#dim7"}, {name: "Dbdim7"}, {name: "Ddim7"}, {name: "D#dim7"}, {name: "Ebdim7"}, {name: "Edim7"}, {name: "Fdim7"}, {name: "F#dim7"}, {name: "Gbdim7"}, {name: "Gdim7"}, {name: "G#dim7"}])
