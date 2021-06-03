# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Major Triads
Chord.create([{name: "A" }, {name: "A#"}, {name: "Bb"}, {name: "B"}, {name: "C"}, {name: "C#"}, {name: "Db"}, {name: "D"}, {name: "D#"}, {name: "Eb"}, {name: "E"}, {name: "F"}, {name: "F#"}, {name: "Gb"}, {name: "G"}, {name: "G#"}])

# Minor Triads
Chord.create([{name: "Amin" }, {name: "A#min"}, {name: "Bbmin"}, {name: "Bmin"}, {name: "Cmin"}, {name: "C#min"}, {name: "Dbmin"}, {name: "Dmin"}, {name: "D#min"}, {name: "Ebmin"}, {name: "Emin"}, {name: "Fmin"}, {name: "F#min"}, {name: "Gbmin"}, {name: "Gmin"}, {name: "G#min"}])

# Dominant
Chord.create([{name: "A7" }, {name: "A#7"}, {name: "Bb7"}, {name: "B7"}, {name: "C7"}, {name: "C#7"}, {name: "Db7"}, {name: "D7"}, {name: "D#7"}, {name: "Eb7"}, {name: "E7"}, {name: "F7"}, {name: "F#7"}, {name: "Gb7"}, {name: "G7"}, {name: "G#7"}])

