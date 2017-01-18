
import XMonad

myTerminal = "gnome-terminal" 
-- myTerminal = "urxvt" 

main = xmonad defaultConfig 
       { modMask = mod4Mask,
         terminal = myTerminal } 

