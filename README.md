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

you can configure the _G.scriptPacks.settings however you want, change the delay, genre and skip loading. have fun!

# update log

1.8 (30.03.2023):
```
- added 'universal' genre for every game
- fixed script-packs
```
