# tfe-mapper
a quick n dirty mudlet mapper for the forests edge mud

## getting started

paste the following into mudlet to auto install this package:

```lua
lua local a="https://raw.githubusercontent.com/njs50/tfe-mapper/master/tfe-mapper.xml"local function b(c,d)if not d:find("tfe-mapper",1,true)then return end installPackage(d)os.remove(d)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone",b,true)downloadFile(getMudletHomeDir()..(a:ends("xml")and"/tfe-mapper.xml"or"/tfe-mapper.zip"),a)
```

or you can download the package file [tfe-mapper.xml](https://github.com/njs50/tfe-mapper/raw/master/tfe-mapper.xml) and install it via package or module managemer

## quick start

make sure you have gmcp enabled in mudlet prefrences. entering  `lua display(gmcp)` should give you some info if it is working.
mapping should be mostly automatic, however special exits need special love!

protip: if it doesn't show up as an exit, it is a special exit, and you need to use the `map exit` command below to tell the mapper which direction the exit is in and what the command is to go there. If you don't do this then speedwalking won't work there. You can use special exits for door commands as well instead of having to write triggers...

## starter map

starter map [njs50-map.dat](https://github.com/njs50/tfe-mapper/raw/master/njs50-map.dat) I mapped out most of the paths between cities and to gate stones. chiiron should have it's entrances locked so lighties might need to unlock those (right click the room in the map) and add the special exits to enter (i.e `map exit w knock gate & west`)

install in mudlet with:
```
map load https://github.com/njs50/tfe-mapper/raw/master/njs50-map.dat
```

## more comprehensive map
cheater map [njs50-comprehensive-map.dat](https://github.com/njs50/tfe-mapper/raw/master/njs50-comprehensive-map.dat) includes most stuff mapped including the druid ways.

install in mudlet with:
```
map load https://github.com/njs50/tfe-mapper/raw/master/njs50-comprehensive-map.dat
```



## map commands

`map update` - updates this package to the latest version in github. beware: this would kill any changes you've made in the package. (best to install as a module if you want to make changes).

`map exit [n|e|s|w|u|d|in|out] <cmd>` - adds a one way special exit to the map. e.g `map exit u climb up` will add an exit up which will use the command "climb up" to traverse.

`map exit cancel` - will cancel any pending special exits. this is only going to be useful if the command failed to move rooms, otherwise you might need to delete the rooms in mudlet and try again.

`map connect [n|e|s|w|u|d|in|out] <cmd>` - connects the previous room to this one using the direction specified and the command you enter. the direction should be the direction you just travelled. this is useful if you just entered a room in a strange way and it isn't added to the map yet.

e.g. from the waterfall north of chiiron. if you entered the crevice you would do `map connect n enter crevice` from inside the cave to add the new room and connect it to the previous room using the enter crevice command. to add the reverse direction back you could also do `map exit s enter crevice`.

<!--
`map connect [n|e|s|w|u|d|in|out <room vnum> <room2 vnum>` - connects two rooms togeather using the specified direction -->

`map reset` - will completely reset the area you are currently in. you should only use this if you really messed things up.


## move commands

`go <place>` - you might want to edit this one to add some more places. i've been a bit lazy about adding em. atm it knows about: hillies, pixies, kha, khaBank, med, medBank, pen, penBank, sos, voal, voalBank, cairn, knight, blade, wayward, chi, zaranders, barbs, denab, brith, tg, cycs, stonies, toys, vyans, root, yetis. if you can figure out what those mean. you can edit the alias to add more.

`go <room number> [cmd|alias]` - if you can get there this will take you there... takes optional command or alias to run when you arrive

`stop|pause|resume` - pause or resume or stop speedwalk


