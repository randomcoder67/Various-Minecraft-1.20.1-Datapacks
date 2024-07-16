# Minecraft Datapack Tweaks

## Trading Changes

Mojang released an experimental villager trade rebalance as part of the 1.20.2 update. Unfortunately it is therefore not avalible on 1.20.1, which is the most popular 1.20 version for modding. This repo contains a port of (most) of the features of the trade rebalance.

### Features

Contains most of the features listed in [the wiki article](https://minecraft.wiki/w/Villager_Trade_Rebalance):
* Increased diamond ore spawning in the deepslate layers
* Modification to structure loot tables to make certain enchanted books more common
* Changes to Librarian trades
* Changes to Armourer trades
* Charges to Cartographer trades (including addition of Villager/Swamp Hut/Jungle Temple maps)
* Changes to Wandering Trader trades

Extra changes I added that aren't in the original experiment:
* Changes to Toolsmith trades
* Changes to Weaponsmith trades

I tried to make these changes in line with the changes to the Armourer

### Dependencies

This datapack is designed to work with a Fabric mod:

* [VillagerConfig](https://modrinth.com/mod/villagerconfig)
* [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api)


## More Diamonds and Altered Chest Loot

As part of the villager rebalance, changes were made to the world generation to make diamonds more common, and changes to loot chests were made to make exploring a more viable way to get useful enchantments. This datapack is an exact copy of those changes, allowing them to be used in 1.20.1.

## World Gen

This datapack is designed to emulate some features of the o.der Minecraft world generation.

Currently there are two major changes in the pack

### Less Temperature Biome Clustering

In Minecraft release 1.7, the world generation was massively overhauled. Instead of biomes spawning randomly, they would be clustered by temperatures.  
In my opinion, this makes esploring the world much less interesting, and at times very frustrating, as if you spawn in the middle of a "cold cluster", you may have very aethetically similar biomes surrounding you for 1000+ blocks.  
Luckily by changing one value in a file, we can affect the degree of biome clustering. Unfortunately this is not a perfect fix. Reducing the biome clustering too make the world gen very incoherent (e.g. tiny patches of snow generating in the middle of a desert).  

The file in question is `data/minecraft/worldgen/noise/temperature.json`. The `firstOctave` value is `-10` by default. Increasing this value decreases the amount of clustering. In this datapack, I have set `firstOctave` to `-9`, which seems to be a good balance of not too much clustering and still coherent worldgen.

### Lowered Village Spawn Rate

In modern Minecraft, you will constantly come across villages when exploring. This has numerous negative effects on the game:

1) It makes discovering a village far less impactful
2) It encourages abuse of the villager mechanics
	* Why not trade with villagers to get full diamond gear, when they are everywhere?
3) It makes the world feel inhabited, compared to the older Minecraft worlds which felt deserted and "limnal"

Fortunately, this is also very easy to change with a datapack.  
The file in question is `data/minecraft/worldgen/structure_set/villages.json`. 

I have changed `seperation` from `8` to `12`, and `spacing` from `34` to `48`
