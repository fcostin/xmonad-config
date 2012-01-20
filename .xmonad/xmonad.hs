import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

-- cargo cult programming

main = do
	-- fire up xmobar
	xmobarProc <- spawnPipe "/usr/bin/xmobar /home/fcostin/.xmobarrc"
	xmonad $ defaultConfig {
			-- required for xmonad to layout around statusbar
			manageHook = manageDocks <+> manageHook defaultConfig,
			layoutHook = avoidStruts $ layoutHook defaultConfig,
			-- define how we talk to xmobar
			logHook = dynamicLogWithPP $ xmobarPP {
					ppOutput = hPutStrLn xmobarProc,
					ppTitle = xmobarColor "green" "" . shorten 50
			}
		}
