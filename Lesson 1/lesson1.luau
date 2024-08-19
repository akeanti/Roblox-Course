-- Variables and Data Types
local playerName = "Algebrain"  -- String
local playerScore = 150  -- Number
local isPlayerActive = true  -- Boolean

-- Function to greet the player
function greetPlayer(name)
    print("Welcome, " .. name .. "!")
end

-- Function to check player's score
function checkScore(score)
    if score > 100 then
        print("Great job! Your score is " .. score)
    elseif score == 100 then
        print("Good effort! Your score is exactly 100.")
    else
        print("Keep trying! Your score is " .. score)
    end
end

-- Call the functions
greetPlayer(playerName)
checkScore(playerScore)

-- Example of a loop to display countdown
for i = 5, 1, -1 do
    print("Starting game in " .. i .. "...")
end

-- Final message to the player
if isPlayerActive then
    print(playerName .. " is now active in the game!")
else
    print(playerName .. " is not active.")
end
