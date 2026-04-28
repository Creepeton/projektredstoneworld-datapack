# Runs every tick that the reactor is loaded

# Radiation calculations
scoreboard players operation #rtcreactorintermediate info = #rtcreactorcoretemptarget info
scoreboard players remove #rtcreactorintermediate info 175
scoreboard players operation #rtcreactorintermediate info *= 10 CONSTANTS
scoreboard players operation #radrtcreactoraddfrac info = #rtcreactorintermediate info

scoreboard players operation #rtcreactorintermediate info = #rtcreactorwaterpressuretarget info
scoreboard players operation #rtcreactorintermediate info /= -40 CONSTANTS
scoreboard players operation #radrtcreactoraddfrac info += #rtcreactorintermediate info

scoreboard players operation #rtcreactorintermediate info = #rtcreactorturbinepowertarget info
scoreboard players operation #rtcreactorintermediate info /= 7 CONSTANTS
scoreboard players operation #radrtcreactoraddfrac info += #rtcreactorintermediate info

execute if score #radrtcreactoraddfrac info matches ..-1 run scoreboard players set #radrtcreactoraddfrac info 0
