item replace entity @s container.0 with dirt 
item modify entity @s container.0 gen:math/binomial_attribute
execute store result score #binomial.rolls gen.math run data get entity @s item.tag.AttributeModifiers[{Name:"gen.math.binomial"}].Amount