print("loading.. (0/4)");
if _G.scriptPacks == nil then return print("_G.scriptPacks is missing."); end;
if _G.scriptPacks.skipGameLoading == nil then return print("_G.scriptPacks.skipGameLoading is missing.") end;
if _G.scriptPacks.delayBetweenExecutingScripts == nil then return print("_G.scriptPacks.delayBetweenExecutingScripts is missing.") end;
if _G.scriptPacks.genreToLoad == nil then return print("_G.scriptPacks.genreToLoad is missing.") end;
print("_G.scriptPacks initialised! (1/4)");
print("_G.scriptPacks.settings initialised! (2/4)");
repeat task.wait() until game:IsLoaded() or _G.scriptPacks.settings.skipGameLoading == true;
print("game loaded (3/4)");

local genres = {
	pvp = loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/genres/pvp.lua"))();
};

if not genres[_G.scriptPacks.genreToLoad] then
	return print("selected genre doesn't exist.");
else
	print("genre exists, trying to load scripts")
	for i, v in pairs(genres[_G.scriptPacks.genreToLoad]) do
		loadstring(game:HttpGet(v))();
		print("script loaded!");
		task.wait(_G.scriptPacks.delayBetweenExecutingScripts);
	end;
end;
print("everything was successfully executed! (4/4)");
