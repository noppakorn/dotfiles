import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.EwmhDesktops

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.DynamicBars

main :: IO()
main = xmonad . ewmh =<< xmobar myConfig

myConfig = def
    { modMask = mod4Mask
    , terminal = "alacritty"
    , borderWidth = 3
    , startupHook = spawn "~/.config/autostart/autostart.sh"
    , layoutHook = myLayout
    }
    `additionalKeysP`
    [ ("M-w"  , spawn "brave"               )
    , ("Print", unGrab *> spawn "spectacle" )
    ]

myLayout = tiled ||| Mirror tiled ||| Full ||| threeCol
    where
      threeCol = ThreeColMid nmaster delta ratio
      tiled   = Tall nmaster delta ratio
      nmaster = 1
      ratio   = 0.55
      delta   = 0.05
