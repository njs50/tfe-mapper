# tfe-mapper
a mudlet mapper for the forests edge mud

## getting started

the best option is to install the mapper via my package manager:
```lua
lua postPMInstall='tfe-mapper'; uninstallPackage('njs50-package-manager'); installPackage('https://tinyurl.com/ykjbnsf8/njs50-package-manager.xml')
```

load my comprehensive map (optional - will override existing map data):
```lua
map load
```

or you can download the package file [tfe-mapper.xml](https://github.com/njs50/tfe-mapper/raw/master/tfe-mapper.xml) and install it manually in mudlet

## quick start

the map won't locate you until the first time you move rooms, so after installing move somewhere! also, probably best not to do it from some super obscure location as it's generally best to start mapping from a known point.

make sure you have gmcp enabled in mudlet prefrences. entering  `lua display(gmcp)` should give you some info if it is working. occasionally when connecting to the mud for some reason mudlet fails to establish a gmcp connection. If the mapper isn't working after you first login usually disconnecting and reconnecting will fix this. 


### mapping should be mostly automatic, however special exits need special love!

tip: if it doesn't show up as an exit on your prompt, or takes a special command to exit then it is a special exit, and you need to use the `map exit` command below to tell the mapper which direction the exit is in and what the command is to go there. If you don't do this then speedwalking won't work there. 

tip: if you need to send a command to open and exit you can use the `map open` command to set it.



## starter map

starter map [njs50-map.dat](https://github.com/njs50/tfe-mapper/raw/master/njs50-map.dat) I mapped out most of the paths between cities and to gate stones. chiiron should have it's entrances locked so lighties might need to unlock those (right click the room in the map)

install in mudlet with:
```
map load https://github.com/njs50/tfe-mapper/raw/master/njs50-map.dat
```

## more comprehensive map
cheater map [njs50-comprehensive-map.dat](https://github.com/njs50/tfe-mapper/raw/master/njs50-comprehensive-map.dat) includes most stuff mapped including the druid ways.

install in mudlet with:
```
map load
```



## map commands

`njs50pm update tfe-mapper` - updates this package to the latest version in github. beware: this would kill any changes you've made in the package. (best to install it as a module if you want to make changes).

`map open [n|e|s|w|u|d] <cmd>` - gives the map the command to open an exit. e.g `map open e knock gate` to get the guards to open the east gate. if used without `<cmd>` it will clear the open command. perhaps if you did it in the wrong room you'd want to do this.

`map exit [n|e|s|w|u|d|in|out] <cmd>` - adds a one way special exit to the map. e.g `map exit u climb up` will add an exit up which will use the command "climb up" to traverse. you should only use this when the exit isn't openable, which is probalby any time you can't scan the next room.

`map exit cancel` - will cancel any pending attempts to add special exits. this is only going to be useful if the command failed to move rooms, otherwise you might need to delete the rooms in mudlet and try again.

`map drink <target>` - sets a drink target for this room. e.g. `map drink stream`. sets metadata on the room for a drink source. you could use this in trigger/timer/alias by doing getRoomUserData(gmcp.Room.Info.num, 'drink-target'). will be cleared if you don't provide `<target>`.

`map reset` - will completely reset the area you are currently in. you should only use this if you really messed things up. I'd suggest doing it from the first room of the zone, then after the reset exit the zone and come back in so that the first room is correctly joined to the rest of the map.


## movement related commands

`locations` - shows you all the places that aliases are configured for. you can add more room number aliases in a script by making a script like:
```lua
tfe = tfe or {}
tfe.locations = tfe.locations or {}
tfe.locations.secretBase = 170
tfe.locations.anotherExample = 140
...
```

`go <place|room number>` - will attempt to walk to a location in the mud. if for some reason you fall off the path it will recalculate the path and resume.

`go <room number> [cmd|alias]` - as above but takes an optional command or alias to run when you arrive

`tgo <place|room number> `- if you can get there this will take you there using speedwalks, faster but harder to cancel, and no validation after each step that you are on the correct path still. great for going long distances fast.

`stop|pause|resume` - stop, pause or resume a speedwalk


