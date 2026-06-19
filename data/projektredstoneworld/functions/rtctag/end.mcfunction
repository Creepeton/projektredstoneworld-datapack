# Runs when the RTC tag game ends.

scoreboard players set #tagstatus info 0
bossbar set tagtimer visible false
bossbar set timer color white
bossbar set tagtimer max 1
bossbar set tagtimer value 1
bossbar set tagtimer name [{"text":"---=== TAG LOBBY: Wait for the game to start ===---","color":"white"}]
