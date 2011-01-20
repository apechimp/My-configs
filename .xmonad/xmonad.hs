import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.Run
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHooks = composeAll
    [ isFullscreen --> doFullFloat
    , title =? "VLC (XVideo output)" --> doFullFloat
    ]

--myClock = "~/.xmonad/clock | dzen2 -x 660 -w 365"


main = do
 --   clockBar <- spawnPipe myClock
    xmonad $ defaultConfig
        { manageHook = myManageHooks
        --, layoutHook = smartBorders (Tall 1 .5 ||| Mirror Tall ||| Full)
        , modMask = mod4Mask     -- Rebind Mod to the Meta key
        , terminal = "urxvt"
        }
