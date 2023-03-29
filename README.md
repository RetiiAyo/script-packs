# script-packs v1.7

# SCRIPT IS DISABLED FOR NOW, COME BACK SOON

open-source script packs - load just one string, will load specialised for a genre scripts. by me. free.

# how to use?
paste this into your executor

```
_G.scriptPacks = {
	skipGameLoading = false, -- self explaining. (default: false)
	delayBetweenExecutingScripts = 1, -- self explaining. (default: 1)
	genreToLoad = "pvp" -- genres: pvp (more coming soon)
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/loader.lua"))()
```

you can configure the _G.scriptPacks.settings however you want, change the delay, genre and skip loading. have fun!
