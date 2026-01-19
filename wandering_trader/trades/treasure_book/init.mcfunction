loot spawn ~ ~ ~ loot mob_manager:gameplay/treasure_book
data modify storage eden:temp trader.treasurebook.treasure_book set from entity @n[type=item,distance=..2,predicate=mob_manager:entity/is_enchanted_book] Item.components
kill @n[type=item,distance=..2,predicate=mob_manager:entity/is_enchanted_book]

data modify storage eden:temp trader.treasurebook.price set from storage eden:settings mob_manager.wandering_trader_settings.treasurebookpayamount
data modify storage eden:temp trader.treasurebook.payitem set from storage eden:settings mob_manager.wandering_trader_settings.treasurebookpayitem

function mob_manager:wandering_trader/trades/treasure_book/add with storage eden:temp trader.treasurebook