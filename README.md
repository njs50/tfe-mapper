# tfe-mapper
a quick n dirty mudlet mapper for the forests edge mud

## getting started

install instructions coming at some point (when i figure out how it works :p)

you can import my [njs50-map.dat](https://github.com/njs50/tfe-mapper/raw/master/njs50-map.dat) through the mudlet mapping prefrences if you want to grab a map that has most of the basic stuff filled out. beware tho it might have places you don't want to speed walk through mapped. i'd suggest if you don't want to go through chiiron or voaleth right clicking the gates on the map and picking "lock" so that it won't try and walk you through there.


## map commands

`tfemap start` - start mapping, if you already have a map you should do it from a room you already know so that things join up nicely

`tfemap stop` - stops mapping. might be a good idea if something went horribly wrong. i think atm it might also stop if you do a speedwalk.

`tfemap area [area name]` - lets you name your current area on the map. nb: this is the "zone" in tfe you are in. some of them are super weird. like bits of chiiron and med and dungeons are all mixed togeather in one zone. most things that show up in "area" are a single zone tho.

## move commands

`go <place>` - you might want to edit this one to add some more places. i've been a bit lazy about adding em. atm it knows about: hillies, pixies, kha, khaBank, med, medBank, pen, penBank, sos, voal, voalBank, cairn, knight, blade, wayward, chi, zaranders, barbs, denab, brith, tg, cycs, stonies, toys, vyans, root, yetis. if you can figure out what those mean. you can edit the alias to add more.

`go <room number> [cmd|alias]` - if you can get there this will take you there... takes optional command or alias to run when you arrive

`stop|pause|resume` - pause or resume or stop speedwalk


## triggers of note

in mapping there a `no exit to the x` trigger you might need to add addittional things to, i.e where an exit requires a special command. i.e "enter hole" instead of "west".




