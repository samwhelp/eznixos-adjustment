

# Eznix OS


## Link

* SourceForge / [EznixOS](https://sourceforge.net/projects/eznixos/)
* OSDN / [EznixOS](https://osdn.net/projects/eznix-os/)
* YouTube / [eznix](https://www.youtube.com/c/eznix/videos)


## Notice

### calamares install user group id

when install system by calamares,

the user group id is 1001.

calamares [default groups settings](https://github.com/samwhelp/eznixos-adjustment/blob/main/project/eznixos-adjustment-system/eznixos-adjustment-iso-profile/recipe/debian-12/orginal/2023-07-02/eznix12X/calamares/modules/users.conf#L21).

when instlled => bluetooth(1000), user(1001)


how to fix, [add package](https://github.com/samwhelp/eznixos-adjustment/blob/main/project/eznixos-adjustment-system/eznixos-adjustment-iso-profile/recipe/debian-12/orginal/2023-07-02/eznix12X/bldeznix12X#L40)

* bluetooth
* blueman 
