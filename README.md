#Nature Wildlife Tracker#

#####Written by [Amoreena Hagedorn] (https://github.com/amoreena) & [Justin Pacubas] (https://github.com/pac1687)

###About:

This program was written as an testament to our Ruby on Rails knowledge for Epicodus Summer 2014

####Our Story:
[Imgur](http://i.imgur.com/ANTdcar)

###Description:
The Forest Service is considering a proposal from a timber company to clear-cut an old-growth forest of virgin Douglas fir just outside of Portland. Before they give the go-ahead, they need to do an environmental impact study. They've asked you and your pair to build an app so that the rangers can report wildlife sightings.

===============================
####Features
+ Menu for an species
+ Menu for an sightings with location
+ Menu for a regions
+ Create new species and sightings
+ List all species
+ Update entries
+ Delete unwanted entries

####Requirements
* The current stable version of Ruby 2.1.2.
* Text Editor (Sublime 3 beta)
* Postgresql

#####Instructions:
1) Download zip file
2) Enact rake db:create
    * rake db:migrate

3) Run rails server
4) Open browser to localhost:3000
5) Be amazed


##Schema:
This program contains a postgresql database labeled 'wildlife_track_development' with the following schema:

species   | sightings       | regions
------    | --------------  | -----------------
id        | id              | id
name      | specie_id       | specie_id
created_at| longitude       | sighting_id
updated_at| latitude        | created_at
          | created_at      | updated_at
          | updated_at      |

####License:
MIT

