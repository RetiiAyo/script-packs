local ScriptPacksCore = Instance.new("ScreenGui")
ScriptPacksCore.Name = "ScriptPacksCore"
ScriptPacksCore.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScriptPacksCore.ResetOnSpawn = false

syn.protect_gui(ScriptPacksCore)
ScriptPacksCore.Parent = game:GetService("CoreGui")

local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(1, 0, 0, 36)
textlabel.Text = "Loading.."
textlabel.BackgroundTransparency = 1
textlabel.TextStrokeTransparency = 0
textlabel.TextSize = 30
textlabel.Font = Enum.Font.SourceSans
textlabel.TextColor3 = Color3.new(1, 1, 1)
textlabel.Position = UDim2.new(0, 0, 0, -36)
textlabel.Parent = ScriptPacksCore

if _G.scriptPacksAlreadyExecutedInOneGame == 1 then return textlabel.Text = "script-packs was already executed in this session!" end 
textlabel.Text = "loading.. (0/4)"
if _G.scriptPacks == nil then return textlabel.Text = "_G.scriptPacks is missing!" end;
if _G.scriptPacks.skipGameLoading == nil then return textlabel.Text = "_G.scriptPacks.skipGameLoading is missing!" end;
if _G.scriptPacks.delayBetweenExecutingScripts == nil then return print("_G.scriptPacks.delayBetweenExecutingScripts is missing.") end;
if _G.scriptPacks.genreToLoad == nil then return print("_G.scriptPacks.genreToLoad is missing.") end;
print("_G.scriptPacks initialised! (1/4)");
print("_G.scriptPacks.settings initialised! (2/4)");
repeat task.wait() until game:IsLoaded() or _G.scriptPacks.settings.skipGameLoading == true;
print("game loaded (3/4)");

local genres = loadstring(game:HttpGet("https://raw.githubusercontent.com/RetiiAyo/script-packs/main/genre-json.lua"))();

if _G.scriptPacks.genreToLoad == "custom" and _G.scriptPacks.customScripts ~= nil then
	print("custom genre selected, trying to load scripts")
	for i, v in pairs(_G.scriptPacks.customScripts) do
		loadstring(game:HttpGet(v))();
		print("custom script loaded!")
		task.wait(_G.scriptPacks.delayBetweenExecutingScripts);
	end;
else
	if not genres[_G.scriptPacks.genreToLoad] then
	return print("selected genre doesn't exist.");
else
	print("genre exists, trying to load scripts")
	for i, v in pairs(genres[_G.scriptPacks.genreToLoad]) do
		loadstring(game:HttpGet(v))();
		print("script loaded!");
		task.wait(_G.scriptPacks.delayBetweenExecutingScripts);
	end;
	_G.scriptPacksAlreadyExecutedInOneGame = 1
    end;
end;
print("everything was successfully executed! (4/4)");
