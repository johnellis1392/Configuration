
import XMonad

myTerminal = "gnome-terminal" 

main = xmonad defaultConfig 
       { modMask = mod4Mask,
         terminal = myTerminal } 

