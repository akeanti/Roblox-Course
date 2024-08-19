
# Roblox Walkway Guide

Welcome to the **Roblox Scripting Guide**! This guide will help you get started with scripting in Roblox using the Lua programming language.

---

## 1. Basic Syntax

### Variables
```lua
local myVariable = 10
local myString = "Hello, Roblox!"
```

### Data Types
- Numbers, strings, booleans, tables, functions, nil.
```lua
local number = 5
local text = "Roblox"
local isGameActive = true
local myTable = {1, 2, 3}
local myFunction = function() print("Hello!") end
local nothing = nil
```

---

## 2. Control Structures

### If Statements
```lua
local score = 100
if score > 50 then
    print("High score!")
elseif score == 50 then
    print("Average score!")
else
    print("Low score!")
end
```

### Loops
- **For Loop**:
```lua
for i = 1, 10 do
    print(i)
end
```
- **While Loop**:
```lua
local count = 1
while count <= 10 do
    print(count)
    count = count + 1
end
```
- **Repeat Until Loop**:
```lua
local count = 1
repeat
    print(count)
    count = count + 1
until count > 10
```

---

## 3. Functions

### Defining Functions
```lua
function greetPlayer(playerName)
    print("Welcome, " .. playerName)
end

greetPlayer("Algebrain")
```

### Return Values
```lua
function add(a, b)
    return a + b
end

local result = add(5, 3)  -- result is 8
```

---

## 4. Tables (Arrays and Dictionaries)

### Arrays
```lua
local fruits = {"Apple", "Banana", "Cherry"}
print(fruits[1])  -- Output: Apple
```

### Dictionaries
```lua
local playerStats = {
    ["Algebrain"] = 100,
    ["AnotherPlayer"] = 80
}
print(playerStats["Algebrain"])  -- Output: 100
```

---

## 5. Events and Connections

### Connecting Functions to Events
```lua
local part = script.Parent
part.Touched:Connect(function(hit)
    print(hit.Name .. " touched the part!")
end)
```

---

## 6. Object-Oriented Programming

### Metatables
```lua
local Player = {}
Player.__index = Player

function Player.new(name, score)
    local self = setmetatable({}, Player)
    self.name = name
    self.score = score
    return self
end

function Player:DisplayScore()
    print(self.name .. " has a score of " .. self.score)
end

local player1 = Player.new("Algebrain", 100)
player1:DisplayScore()
```

---

## 7. Roblox-Specific APIs

- **Workspace**: Access to all objects in the game world.
- **Players**: Access to player data and actions.
- **ReplicatedStorage**: Store data and scripts that can be accessed by both server and client scripts.
- **Server Scripts vs Local Scripts**:
  - Server Scripts run on the server and affect all players.
  - Local Scripts run on a specific client and affect only that client.
- **RemoteEvents and RemoteFunctions**: For client-server communication.

---

## 8. Common Scripting Concepts

### Instantiation
```lua
local newPart = Instance.new("Part")
newPart.Parent = workspace
newPart.Position = Vector3.new(0, 10, 0)
```

### CFrame
Used for positioning and rotating objects.
```lua
part.CFrame = CFrame.new(0, 10, 0) * CFrame.Angles(0, math.rad(45), 0)
```

### Vectors
```lua
local position = Vector3.new(0, 10, 0)
local direction = Vector3.new(1, 0, 0)
```

---

## 9. Debugging

### Printing Values
```lua
print("Debug message", variable)
```

### Using the Output Window
Helps track down errors and see printed values.

---

## 10. Best Practices

- **Comment your code**:
```lua
-- This is a single line comment
```
- **Modularize your code**: Split large scripts into smaller, manageable modules.
- **Use `WaitForChild` to ensure objects are loaded before accessing them**:
```lua
local myPart = workspace:WaitForChild("MyPart")
```

---
