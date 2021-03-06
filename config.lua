-- This is the lookup table for EMP biters. Rather than add its own custom biters, this mod gives certain extant biters a chance to cause an EMP blast and disable nearby turrets.
-- Only biters that have an entry in this table are eligible to give off an EMP blast on death.

-- The format for entries is: 							{size, maxChance, minDuration, maxDuration}

-- Size is in tiles. This is the "radius" (it's a square region actually) of the area of effect around the dying biter for the EMP blast.

-- MaxChance is in percent. This is the maximum chance that a biter will trigger an EMP blast when it dies.
-- The chance starts out at 0% when the evolution factor is 0 and increases up to the maximum chance as the evolution factor rises.
-- MaxChance can exceed 100, and this just means that it will reach 100% chance at a lower evo factor.
-- For instance, the Big Worm has a default value of 200, and this means that it reaches 100% chance at 50% evolution factor.

-- Durations are in ticks (60 ticks per second).
-- The exact duration of the EMP disabling is randomized between the minimum and maximum values.

EMPBiterTable = {}

-- Vanilla Biters
EMPBiterTable["big-biter"] = 							{10, 15,  300, 600}
EMPBiterTable["behemoth-biter"] = 						{15, 25,  300, 900}

-- Bob's Enemies 0.12.6 and earlier
EMPBiterTable["bob-bigger-biter"] =						{10, 20,  360, 900}
EMPBiterTable["bob-biggest-biter"] =					{12, 25,  600, 900}
EMPBiterTable["bob-fire-biter"] =						{14, 30,  600, 1200}
EMPBiterTable["bob-titan-biter"] =						{16, 35,  900, 1500}
EMPBiterTable["bob-behemoth-biter"] =					{18, 40,  1200, 2400}
-- Bob's Enemies 0.12.7 and later
EMPBiterTable["bob-big-piercing-biter"] =				{10, 20,  360, 900}
EMPBiterTable["bob-huge-acid-biter"] =					{12, 25,  600, 900}
EMPBiterTable["bob-huge-explosive-biter"] =				{12, 25,  600, 900}
EMPBiterTable["bob-giant-poison-biter"] =				{14, 30,  600, 1200}
EMPBiterTable["bob-giant-fire-biter"] =					{14, 30,  600, 1200}
EMPBiterTable["bob-titan-biter"] =						{16, 35,  900, 1500}
EMPBiterTable["bob-behemoth-biter"] =					{18, 40,  1200, 2400}
EMPBiterTable["bob-leviathan-biter"] =					{20, 50,  1500, 3000}

-- Dytech War
EMPBiterTable["teen-berserk-biter"] = 					{10, 10,  300, 600}
EMPBiterTable["teen-elder-biter"] = 					{11, 15,  300, 900}
EMPBiterTable["teen-king-biter"] = 						{12, 20,  300, 1200}
EMPBiterTable["teen-queen-biter"] = 					{13, 20,  300, 1500}
EMPBiterTable["adult-berserk-biter"] = 					{14, 20,  600, 1200}
EMPBiterTable["adult-elder-biter"] = 					{15, 25,  600, 1500}
EMPBiterTable["adult-king-biter"] = 					{20, 50,  900, 2100}
EMPBiterTable["adult-queen-biter"] = 					{25, 100, 900, 2400}

EMPBiterTable["dyzilla-unit-1"] = 						{20, 100, 1200, 1800}
EMPBiterTable["dyzilla-unit-2"] = 						{25, 100, 1200, 2100}
EMPBiterTable["dyzilla-unit-3"] = 						{40, 100, 1200, 2400}
EMPBiterTable["dyzilla-unit-4"] = 						{50, 100, 1200, 3000}

-- Natural Evolution Enemies
EMPBiterTable["big-biter-Mk2"] = 						{12, 20,  300, 600}
EMPBiterTable["big-biter-Mk3"] = 						{14, 20,  300, 900}

-- 5dim Battlefield
EMPBiterTable["5d-medium-biter-laser"] = 				{5,  20,  300, 600}
EMPBiterTable["5d-medium-biter-physical"] = 			{5,  20,  300, 600}
EMPBiterTable["5d-medium-biter-explosive"] =			{5,  20,  300, 600}
EMPBiterTable["5d-big-biter-laser"] = 					{10, 25,  600, 900}
EMPBiterTable["5d-big-biter-physical"] = 				{10, 25,  600, 900}
EMPBiterTable["5d-big-biter-explosive"] = 				{10, 25,  600, 900}


-- This is the lookup table for EMP spitters & worms. Rather than add its own custom spitters, this mod gives certain extant spitters a chance to disable a turret when they hit it with their spit.
-- Big worms have a 100% chance to cause an EMP blast, to make turret creep more challenging.

-- The format is the same as above:						{size, maxChance, minDuration, maxDuration}

EMPSpitterTable = {}

-- Vanilla Spitters
EMPSpitterTable["EMP-acid-splash-purple-big"] =			{1,  20,  300, 600}  -- also "bob-huge-acid-spitter"
EMPSpitterTable["EMP-acid-splash-purple-behemoth"] =	{2,  25,  300, 900}

-- Vanilla Big Worm
EMPSpitterTable["EMP-acid-splash-purple-worm"] =		{20, 200, 600, 1200} -- Suck it, turret creep!

-- Bob's Enemies 0.12.6 and earlier
EMPSpitterTable["EMP-acid-splash-explosive"] =			{1,  20,  300, 420}  -- "bob-bigger-spitter"/"bob-huge-explosive-spitter" and "bob-big-explosive-worm-turret"
EMPSpitterTable["EMP-acid-splash-fire"] =				{2,  20,  300, 540}  -- "bob-biggest-spitter"/"bob-giant-fire-spitter" and "bob-big-fire-worm-turret"
EMPSpitterTable["EMP-acid-splash-poison"] =				{3,  20,  420, 600}  -- "bob-poison-spitter"/"bob-giant-poison-spitter" and "bob-big-poison-worm-turret"
EMPSpitterTable["EMP-acid-splash-titan"] =				{4,  25,  600, 900}  -- "bob-titan-spitter"
EMPSpitterTable["EMP-acid-splash-behemoth"] =			{5,  25,  900, 1200} -- "bob-behemoth-spitter"
-- Bob's Enemies 0.12.7 and later
EMPSpitterTable["EMP-acid-splash-electric"] =			{1,  20,  300, 420}  -- "bob-big-electric-spitter"
EMPSpitterTable["EMP-acid-splash-leviathan"] =			{7,  50,  900, 1500} -- "bob-leviathan-spitter"

-- Dytech War
EMPSpitterTable["EMP-acid-splash-berserker"] =			{2,  25,  300, 600}  -- All Berzerker-type spitters
EMPSpitterTable["EMP-acid-splash-elder"] =				{3,  40,  600, 900}  -- All Elder-type spitters
EMPSpitterTable["EMP-acid-splash-king"] =				{5,  50,  600, 1200} -- All King-type spitters

-- Natural Evolution Enemies
EMPSpitterTable["EMP-acid-splash-infected"] =			{2,  25,  300, 720}  -- "big-spitter-Mk2"
EMPSpitterTable["EMP-acid-splash-mutated"] =			{2,  25,  300, 900}  -- "big-spitter-Mk3"


-- This table enumerates all entity-types that are vulnerable to EMP. Please don't add or remove anything from this table at this time.

vulnerableEntityTypes = {}

vulnerableEntityTypes["ammo-turret"] = 				true
vulnerableEntityTypes["electric-turret"] = 			true
vulnerableEntityTypes["logistic-robot"] = 			true
vulnerableEntityTypes["construction-robot"] = 		true
vulnerableEntityTypes["radar"] = 					true
