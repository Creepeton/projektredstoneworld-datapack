execute at @s[scores={jiwalking=1}] run data merge entity @s[distance=..1] {Pose:{Body:[0f,0f,0f],LeftArm:[-30f,0f,0f],RightArm:[30f,0f,0f],LeftLeg:[30f,0f,0f],RightLeg:[-30f,0f,0f],Head:[0f,0f,0f]}}
execute at @s[scores={jiwalking=6}] run data merge entity @s[distance=..1] {Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute at @s[scores={jiwalking=11}] run data merge entity @s[distance=..1] {Pose:{Body:[0f,0f,0f],LeftArm:[30f,0f,0f],RightArm:[-30f,0f,0f],LeftLeg:[-30f,0f,0f],RightLeg:[30f,0f,0f],Head:[0f,0f,0f]}}
execute at @s[scores={jiwalking=16}] run data merge entity @s[distance=..1] {Pose:{Body:[0f,0f,-95.55555555555556F],LeftArm:[-38.749999999999986F,-4.444444444444443F,-7.77777777777778F],RightArm:[38.749999999999986F,-4.444444444444438F,-7.7777777777778F],LeftLeg:[-38.88888888888886F,-3.333333333333326F,-6.66666666666665F],RightLeg:[-2.22222222222221F,-1.1111111111111E-5F,-5.555555555555E-6F],Head:[-3.3333333333E-6F,-8.888888E-6F,-9.9E-6F]}}
scoreboard players add @s[scores={jiwalked=1..}] jiwalking 1
scoreboard players set @s[scores={jiwalking=21..}] jiwalking 0
scoreboard players set @s jiwalked 1 
scoreboard players set @s[tag=!condellwalk] jiwalked 0
execute at @s[scores={jiwalked=0}] run data merge entity @s[distance=..1] {Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}