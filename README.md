# script-packs v1.8

open-source script packs - load just one string, will load specialised for a genre scripts. by me. free.

# how to use?
paste this into your executor

```lua
_G.scriptPacks = {
	skipGameLoading = false, -- self explaining. (default: false)
	delayBetweenExecutingScripts = 1, -- self explaining. (default: 1)
	genreToLoad = "pvp" -- genres: pvp, universal (more coming soon)
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/loader.lua"))()
```

or paste this if you want custom scripts (NEW IN 1.8b)
```lua
_G.scriptPacks = {
    skipGameLoading = false, -- self explaining. (default: false)
    delayBetweenExecutingScripts = 1, -- self explaining. (default: 1)
    genreToLoad = "custom", -- nothing to change if custom
    customScripts = {} -- add your custom script links
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/loader.lua"))()
```

you can configure the _G.scriptPacks.settings however you want, change the delay, genre and skip loading. have fun!

# update log

1.8b (30.04.2023):
```
- added a text label when loading script-packs
- added custom scripts support (you can add infinitely scripts)
```

1.8 (30.03.2023):
```
- added 'universal' genre for every game
- fixed script-packs
```
