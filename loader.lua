print("loading.. (0/3)");
if not _G.scriptPacks then return print("_G.scriptPacks is missing."); end;
if not _G.scriptPacks.settings then return print("_G.scriptPacks.settings is missing.") end;
if not _G.scriptPacks.settings.skipGameLoading then return print("_G.scriptPacks.settings.skipGameLoading is missing.") end;
if not _G.scriptPacks.settings.delayBetweenExecutingScripts then return print("_G.scriptPacks.settings.delayBetweenExecutingScripts is missing.") end;
if not _G.scriptPacks.settings.genreToLoad then return print("_G.scriptPacks.settings.genreToLoad is missing.") end;
print("_G.scriptPacks initialised! (1/3)");
print("_G.scriptPacks.settings initialised! (2/3)");

local genres = {
	pvp = loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/genres/pvp.lua"));
};

if not genres[_G.scriptPacks.settings.genreToLoad] then
	return print("selected genre doesn't exist.");
else
	for i, v in pairs(genres[_G.scriptPacks.settings.genreToLoad]) do
		loadstring(game:HttpGet(v))();
		print("script loaded!");
		wait(_g.scriptPacks.settings.delayBetweenExecutingScripts);
	end;
end;
print("everything was successfully executed! (3/3)");
