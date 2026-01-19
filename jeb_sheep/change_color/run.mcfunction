
schedule function mob_manager:jeb_sheep/change_color/run 10s

execute if data storage eden:settings mob_manager.misc{jebcolor:"enabled"} as @e[type=sheep,name=jeb_,tag=!mob_manager.settings.exclude] run function mob_manager:jeb_sheep/change_color/init