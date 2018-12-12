# mudlet-tfe-mapper
a quick n dirty mapper for the forests edge mud

## getting started

you can import my njs50-map.dat (either grab it from here or it's in the package in your mudlet profile) through the mudlet mapping prefrences if you want to grab a map that has most of the basic stuff filled out. beware tho it might have places you don't want to speed walk through mapped. i'd suggest if you don't want to go through chiiron or voaleth right clicking the gates on the map and picking "lock" so that it won't try and walk you through there.

**note** unless you want to rewrite the parse prompt trigger you will need to set your prompt to

``` ?p' -- MORE -- '<%f?f|@R%hhp@n @G%ee@n @B?m'[%mmv]'!m'%vmv'@n %gwm %xxp?l' %llhp' %d?b' %c'> ```

(it's more or less prompt color, perhaps with some prompt cleric stuff added in?)

## map commands

`mapper start` - start mapping, if you already have a map you should do it from a room you already know so that things join up nicely

`mapper stop` - stops mapping. might be a good idea if something went horribly wrong. i think atm it might also stop if you do a speedwalk.

`mapper moved <direction>` - if an exit had a funky exit text i.e `you fall down a big hole` instead of `you leave down.` you can use this command to tell the mapper which direction you just went.

`find me` - updates the map to show your current room. sometimes you might want to do this after first opening the map panel

`setAreaName` - lets you name your current area on the map. nb: this is the "zone" in tfe you are in. some of them are super weird. like bits of chiiron and med and dungeons are all mixed togeather in one zone. most things that show up in "area" are a single zone tho.

`resetCurrentArea` - if you messed up your map somehow this should probably be your last resort. note you can delete rooms etc by selecting them on the map screen. moving them also works. normally the map is only messed up if you forgot to use `mapper move north` or whatever due to a weird exit. or i guess if you did that in the wrong direction. the in game `map` command can be helpful for figuring out which way exits actually are sometimes. 

## move commands

`go <place>` - you might want to edit this one to add some more places. i've been a bit lazy about adding em. atm it knows about: hillies, pixies, kha, khaBank, med, medBank, pen, penBank, sos, voal, voalBank, cairn, knight, blade, wayward, chi, zaranders, barbs, denab, brith, tg, cycs, stonies, toys, vyans, root, yetis. if you can figure out what those mean. you can edit the alias to add more.

`goto <room number> [cmd|alias]` - if you can get there this will take you there... takes optional command or alias to run when you arrive

`stop|pause|resume` - pause or resume or stop speedwalk

## misc utils

`timers` - shows any temp timers that are currently setup

`triggers` - shows any temp triggers that are currently setup

`killAll` - kills all temp timers and triggers


## triggers of note

in mapping there a `no exit to the x` trigger you might need to add addittional things to, i.e where an exit requires a special command. i.e "enter hole" instead of "west".




