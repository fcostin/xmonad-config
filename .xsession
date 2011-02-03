# set root x background image using feh
# n.b. feh seems to die for super-huge jpgs (say, 10k by 4k pixels)
feh --bg-fill '/home/fcostin/Pictures/top-wiki-photos/360-degree_Panorama_of_the_Southern_Sky_smaller.png'

# alternately one can use xsetbg but it doesn't work with console transparency :(
# xsetbg -center Pictures/top-wiki-photos/360-degree_Panorama_of_the_Southern_Sky_smaller.png

# if i want a trayer i can enable this stuff
# - nb would also have to adjust .xmobarrc so it uses 90 percent width instead of 100

# trayer --edge top --align right -SetDockType true \
# 	--SetPartialStrut true --expand true --width 10 \
# 	-- transparent true --height 12 &

# fire up nautilus in the background so it can automatically mount inserted media (eg usb drives) for us
nautilus --no-desktop -n &

# fire up network manager applet
# -- todo : at some point it will request a password it has saved ...
# figure out how to automate this
# this seems pretty broken
# nm-applet --sm-disable &

xmonad
