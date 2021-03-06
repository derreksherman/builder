import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.inspirations.Cauldron;  


//Wooden Gear
recipes.remove(<enderio:item_material:9>);
recipes.addShaped(<enderio:item_material:9>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[null,<minecraft:stick>,null]]);

//Wooden Shears
recipes.remove(<thermalfoundation:tool.shears_wood>);
recipes.addShaped(<thermalfoundation:tool.shears_wood>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[<enderio:item_material:9>,<minecraft:stick>,null]]);

//Rubber Tree
recipes.addShapeless(<gregtech:sapling>, [<ore:treeSapling>,<gregtech:meta_item_1:32627>]);

//Fertilizer 
recipes.remove(<forestry:fertilizer_compound>);
recipes.addShaped(<forestry:fertilizer_compound> * 8, [[<minecraft:sand>,<gregtech:meta_item_1:8226>,<minecraft:sand>]]);


recipes.remove(<dimensionaledibles:overworld_cake>);
recipes.remove(<dimensionaledibles:nether_cake>);
recipes.remove(<dimensionaledibles:end_cake>);
recipes.remove(<dimensionaledibles:custom_cake>);
recipes.remove(<minecraft:cake>);
recipes.remove(<enderio:item_material:70>);

//Cake Base
recipes.addShaped(<enderio:item_material:70>, [[<minecraft:sugar>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:sugar>], [<actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>]]);

//Cake
recipes.addShaped(<minecraft:cake>, [[<minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>], [<minecraft:sugar>, <ore:egg>, <minecraft:sugar>], [<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>]]);

//Overworld Cake
recipes.addShaped(<dimensionaledibles:overworld_cake>, [[<minecraft:redstone>, <gregtech:meta_item_1:2026>, <minecraft:redstone>], [<ore:treeSapling>, <enderio:item_material:70>, <ore:treeSapling>],[<thermalfoundation:material:816>,<minecraft:diamond>,<thermalfoundation:material:816>]]);
<dimensionaledibles:overworld_cake>.addTooltip(format.darkAqua(format.italic("Refill using Oak Saplings.")));

//Nether Cake
recipes.addShaped(<dimensionaledibles:nether_cake>, [[<gregtech:meta_item_1:2333>,<gregtech:meta_item_1:2333>,<gregtech:meta_item_1:2333>], [<minecraft:obsidian>, <enderio:item_material:70>, <minecraft:obsidian>],[<minecraft:soul_sand>,<minecraft:soul_sand>,<minecraft:soul_sand>]]);
<dimensionaledibles:nether_cake>.addTooltip(format.darkAqua(format.italic("Refill using Obsidian.")));

//End Cake
recipes.addShaped(<dimensionaledibles:end_cake>, [[<contenttweaker:endstonedust>,<contenttweaker:endstonedust>,<contenttweaker:endstonedust>], [<minecraft:ender_eye>, <enderio:item_material:70>, <minecraft:ender_eye>],[<gregtech:meta_item_1:12231>,<gregtech:meta_item_1:12231>,<gregtech:meta_item_1:12231>]]);
<dimensionaledibles:end_cake>.addTooltip(format.darkAqua(format.italic("Refill using Eyes of Ender.")));

//Voidworld Cake
recipes.addShaped(<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}), [[<actuallyadditions:item_crystal>,<actuallyadditions:item_crystal:1>,<actuallyadditions:item_crystal:4>], [<forestry:crafting_material>, <enderio:item_material:70>, <forestry:crafting_material>],[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>]]);
<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}).addTooltip(format.darkAqua(format.italic("Refill using Pulsating Dust.")));

mods.jei.JEI.addItem(<dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}));



