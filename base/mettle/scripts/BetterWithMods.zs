# *======= Import =======*
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemStack;

# *======= Changes =======*
#Brick
recipes.remove(<betterwithmods:unfired_pottery:4>);
recipes.addShaped(<betterwithmods:unfired_pottery:4>*4, [
	[<minecraft:clay_ball>, <minecraft:clay_ball>]
]);

#Candle
recipes.remove(<betterwithmods:candle>);
recipes.addShaped(<betterwithmods:candle>, [
	[null, <ore:twine>],
	[null, <ore:wax>],
	[null, <ore:wax>]
]);

#Redstone latch
recipes.remove(<betterwithmods:material:34>);
recipes.addShaped(<betterwithmods:material:34>, [
	[<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
	[null, <botania:quartz:4>]
]);

#Hibachi
recipes.remove(<betterwithmods:hibachi>);
recipes.addShaped(<betterwithmods:hibachi>, [
	[<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>],
	[<ore:stone>, <betterwithmods:material:27>, <ore:stone>],
	[<ore:stone>, <betterwithmods:material:34>, <ore:stone>]
]); 
/*
#Haft
val moulding = mods.betterwithmods.MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
recipes.remove(<betterwithmods:material:36>);
recipes.addShaped(<betterwithmods:material:36>, [
	[null, <embers:ashen_cloth>],
	[null, <ore:glue>],
	[null, moulding]
]);

#Soul forged anvil
recipes.remove(<betterwithmods:steel_anvil>);
recipes.addShaped(<betterwithmods:steel_anvil>, [
	[<betterwithmods:material:14>, <embers:superheater>, <betterwithmods:material:14>],
	[null, <betterwithmods:material:14>],
	[<betterwithmods:material:14>, <betterwithmods:material:14>, <betterwithmods:material:14>]
]);
*/	
# *======= Millstone =======*
#Manganese processing
mods.betterwithmods.Mill.addRecipe([<quark:basalt>], [<techreborn:smalldust:31>, <rustic:dust_tiny_iron>]);

#Pyrite processing
mods.betterwithmods.Mill.addRecipe([<techreborn:dust:39>], [<techreborn:smalldust:52>, <techreborn:smalldust:27>]);

#Galena processing 
mods.betterwithmods.Mill.addRecipe([<techreborn:ore>], [<techreborn:smalldust:29>, <techreborn:smalldust:47>]);

#Zinc processing
mods.betterwithmods.Mill.addRecipe([<thermalfoundation:ore:1>], [<techreborn:smalldust:59>, <techreborn:smalldust:53>]);

# *======= Crucible =======*
#Steel blend
mods.betterwithmods.Crucible.addStoked([<pyrotech:material:22>, <techreborn:smalldust:31>, <ore:dustCharcoal>, <minecraft:iron_ingot>], [<thermalfoundation:material:96>]);
	
#Ender eye
recipes.remove(<minecraft:ender_eye>);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:23>, <minecraft:ender_pearl>], [<minecraft:ender_eye>]);

#Clay brick
mods.betterwithmods.Crucible.addStoked([<minecraft:clay_ball>, <quark:basalt>], [<forestry:ash_brick>]);

#Melt down fixes
mods.betterwithmods.Crucible.remove([<minecraft:gold_ingot>*6]);
mods.betterwithmods.Crucible.remove([<minecraft:iron_ingot>*3]);
mods.betterwithmods.Crucible.addStoked([<minecraft:rail>*8], [<minecraft:iron_nugget>*3]);
mods.betterwithmods.Crucible.addStoked([<minecraft:bucket>], [<minecraft:iron_ingot>*3]);
mods.betterwithmods.Crucible.addStoked([<minecraft:iron_bars>*8], [<minecraft:iron_ingot>*3]);
mods.betterwithmods.Crucible.addStoked([<minecraft:golden_rail>*8], [<minecraft:gold_nugget>*3]);

#Stone compat
val stones = [
	<minecraft:stone:5>,
	<minecraft:stone:3>,
	<minecraft:stone:1>
	] as IItemStack[];
	
for item in stones {
	mods.betterwithmods.Crucible.remove([item]);
}

var meta = 0;
val pyroStone = <pyrotech:cobblestone>.definition;
for item in stones {
	mods.betterwithmods.Crucible.addStoked([pyroStone.makeStack(meta)], [item]);
	meta += 1;
}

# *======= Anvil =======*
#<embers:ashen_cloth>
#Soulsteel plate armour
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:material:42>);
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:42>, [
	[<betterwithmods:material:8>], 
	[<betterwithmods:material:51>], 
	[<betterwithmods:material:41>], 
	[<betterwithmods:material:8>]
]);

#Immolation blade
recipes.remove(<witherskelefix:blade2>);
<witherskelefix:blade2>.addTooltip(format.red("WIP"));
/*
mods.betterwithmods.Anvil.addShaped(<witherskelefix:blade2>, [
	[null, <thaumcraft:ingot:1>, <betterwithmods:material:51>, <betterwithmods:material:36>],
	[null, <draconicevolution:draconic_ingot>, <betteranimalsplus:hirschgeistskull_1>, <betterwithmods:material:51>],
	[<draconicevolution:draconic_ingot>, <embers:ember_cluster>, <draconicevolution:draconic_ingot>, <thaumcraft:ingot:1>],
	[<draconicevolution:draconic_ingot>, <draconicevolution:draconic_ingot>, null, null]
]); 
*/
#Duplicate blade
rh(<witherskelefix:blade>);

# *======= Removals =======*
#Wooden gear
rh(<betterwithmods:material>);
