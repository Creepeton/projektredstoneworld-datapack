execute store result score #px tagcoords run data get entity @s Pos[0] 1
execute store result score #py tagcoords run data get entity @s Pos[1] 1
execute store result score #pz tagcoords run data get entity @s Pos[2] 1

execute store result score #dx tagcoords run data get entity @a[tag=pontokanear,limit=1] Pos[0] 1
execute store result score #dy tagcoords run data get entity @a[tag=pontokanear,limit=1] Pos[1] 1
execute store result score #dz tagcoords run data get entity @a[tag=pontokanear,limit=1] Pos[2] 1

scoreboard players operation #dx tagcoords -= #px tagcoords
scoreboard players operation #dy tagcoords -= #py tagcoords
scoreboard players operation #dz tagcoords -= #pz tagcoords

scoreboard players operation #pythagx info = #dx tagcoords
scoreboard players operation #pythagy info = #dy tagcoords
scoreboard players operation #pythagz info = #dz tagcoords
function projektredstoneworld:pythag

title @s actionbar [{"text":"Nearest player: ","color":"#00BBFF"},{"selector":"@a[tag=pontokanear]"},{"text":" - "},{"text":"X: "},{"score":{"name":"#nearx","objective":"tagcoords"}},{"text":" Y: "},{"score":{"name":"#neary","objective":"tagcoords"}},{"text":" Z: "},{"score":{"name":"#nearz","objective":"tagcoords"}},{"text":" - Distance: "},{"score":{"name":"#sqrt","objective":"info"}}]
