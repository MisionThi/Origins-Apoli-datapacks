# By mision_thi

## Save the data from the targeted player in "player_compass:storage"
# Stores the targets position
$data modify storage player_compass:storage tag.LodestonePos.X set from entity $(PlayerName) Pos[0]
$data modify storage player_compass:storage tag.LodestonePos.Y set from entity $(PlayerName) Pos[1]
$data modify storage player_compass:storage tag.LodestonePos.Z set from entity $(PlayerName) Pos[2]

# Stores the targets dimension (also works in custom dimensions)
$data modify storage player_compass:storage tag.LodestoneDimension set from entity $(PlayerName) Dimension

# Makes sure the compass doesn't reset automatically
data modify storage player_compass:storage tag.LodestoneTracked set value 0b
