import XMonad
import XMonad.Core
import Data.Monoid
import Data.List 
import System.Exit
import System.IO
import qualified System.IO.UTF8

import XMonad.Layout.Tabbed
import XMonad.Layout.Accordion
import XMonad.Layout.ResizableTile
import XMonad.Layout.Grid
import XMonad.Layout.Magnifier
import XMonad.Layout.Circle
import XMonad.Layout.Square
import XMonad.Layout.Cross
import XMonad.Layout.TabBarDecoration
import XMonad.Layout.Maximize
import XMonad.Layout.IM
import XMonad.Layout.DragPane
import XMonad.Layout.PerWorkspace
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.NoBorders                                  (noBorders)

import XMonad.Hooks.DynamicLog 
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.SetWMName

import XMonad.Actions.UpdatePointer
import XMonad.Actions.Warp
import XMonad.Actions.CycleWS
import XMonad.Actions.DwmPromote
import XMonad.Actions.FloatKeys

import XMonad.Util.Run hiding (hPutStrLn)
import XMonad.Util.WorkspaceCompare
import XMonad.Util.EZConfig
import XMonad.Util.Scratchpad
import XMonad.Util.NamedScratchpad

import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.RunOrRaise
import XMonad.Prompt.Man

import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import Data.Ratio

myTerminal      = "urxvt"
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True
myBorderWidth   = 1
myModMask       = mod4Mask
myNumlockMask   = mod2Mask
myWorkspaces    = ["vim", "web" ,"work", "im", "vm", "fun", "gimp", "desk", "ext"]
myNormalBorderColor  = "#212121"
myFocusedBorderColor = "#424242"


myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
    [ 
      ((modm,               xK_o     ), spawn $ XMonad.terminal conf)
    , ((modm,              xK_s      ), spawn "scrot '%j%H%M%S_full.png' -e 'mv $f ~/Dropbox/Public/shots/; dropbox puburl ~/Dropbox/Public/shots/$f | xclip'")
    , ((modm .|. shiftMask, xK_s     ), spawn "sleep 0.2; scrot -s '%j%H%M%S.png' -e 'mv $f ~/images/shots/'")
    , ((modm,               xK_grave ), scratchpadSpawnActionTerminal myTerminal)
    , ((modm,               xK_e     ), namedScratchpadAction myScratchpads "editor")
    , ((modm .|. shiftMask, xK_e     ), namedScratchpadAction myScratchpads "sudoeditor")
    , ((modm,               xK_i     ), namedScratchpadAction myScratchpads "htop")
    , ((modm,               xK_f     ), namedScratchpadAction myScratchpads "ranger")
    , ((modm,               xK_w     ), namedScratchpadAction myScratchpads "weechat")
    , ((modm,               xK_v     ), namedScratchpadAction myScratchpads "alsamixer")
    , ((modm,               xK_n     ), namedScratchpadAction myScratchpads "mpd")
    --, ((modm,               xK_grave     ), namedScratchpadAction myScratchpads "console")
    , ((modm,               xK_r     ), spawn "exe=`dmenu_run -nb '#4B4B4B' -nf 'green' -sb 'grey' -sf 'black' -fn 'Terminus (TTF)-16' ` && eval \"exec $exe\"")
    , ((modm,               xK_c     ), spawn "exec dmenuclip")
    , ((modm,               xK_m     ), spawn "exec xmenud")
    {-, ((modm,               xK_f     ), withFocused (sendMessage . maximizeRestore))-}
    , ((modm,               xK_g     ), spawn "exec pcmanfm" )
    -- , ((modm .|. shiftMask, xK_r     ), spawn "gmrun")
    , ((modm .|. shiftMask, xK_r), shellPrompt defaultXPConfig)
    , ((modm, xK_a), runOrRaisePrompt defaultXPConfig)
    , ((modm, xK_F1), manPrompt defaultXPConfig)
    , ((modm .|. shiftMask, xK_c     ), kill)
    , ((modm,               xK_space ), sendMessage NextLayout)
    {-, ((modm .|. shiftMask, xK_space ), sendMessage PrevLayout)-}
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)
    , ((modm,               xK_Escape     ), refresh)
    , ((modm,               xK_Tab   ), windows W.focusDown)
    , ((modm .|. shiftMask, xK_Tab   ), windows W.focusUp)
    , ((modm,               xK_j     ), windows W.focusDown)
    , ((modm,               xK_k     ), windows W.focusUp  )
    , ((modm,               xK_Down     ), windows W.focusDown)
    , ((modm,               xK_Up     ), windows W.focusUp  )
    , ((modm,               xK_Right     ), windows W.focusDown)
    , ((modm,               xK_Left     ), windows W.focusUp  )
    --  , ((modm,               xK_Left    ), windows W.focusLeft)
    --  , ((modm,               xK_Right     ), windows W.focusRight  )
    , ((modm,               xK_Return     ), windows W.focusMaster  )
    , ((modm .|. shiftMask, xK_Return), windows W.swapMaster)
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )
    , ((modm .|. shiftMask, xK_h     ), sendMessage Shrink)
    , ((modm .|. shiftMask, xK_l     ), sendMessage Expand)
    , ((modm              , xK_t     ), withFocused $ windows . W.sink)
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))
    , ((modm              , xK_b     ), sendMessage ToggleStruts)
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
    , ((modm .|. shiftMask, xK_Escape     ), spawn "xmonad --recompile; xmonad --restart")
    , ((modm              , xK_z     ), sendMessage ToggleLayout)
    --  , ((modm              , xK_x     ), sendMessage (Toggle "Full"))

    ]
    ++
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    --- ++
    ---[((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
    ---    | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
    ---    , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
    ]

myLayoutHook = toggleLayouts (noBorders Full) $ avoidStruts $ onWorkspace "im" imLayout $ onWorkspace "gimp" gimpLayout $ standardLayouts 
  where
     standardLayouts = myTabs ||| myDragPane ||| tiled ||| Grid  
     myDragPane = dragPane Horizontal 0.1 0.5
     tiled   = ResizableTall nmaster delta ratio []
     nmaster = 1
     ratio   = 1/2
     delta   = 3/100
     myTabs = tabbedBottom shrinkText myTabsTheme
     magnify = magnifiercz (15 % 10)
     imLayout = withIM (2/10) (Role "buddy_list") (standardLayouts)
     gimpLayout = withIM (2/10) (Role "gimp-toolbox") (standardLayouts)

myTabsTheme :: Theme
myTabsTheme = defaultTheme { activeBorderColor = "#555"
                            , activeColor = "#252525"
                            , activeTextColor = "#9296D6"
                            , inactiveBorderColor = "#777"
                            , inactiveColor = "#888"
                            , inactiveTextColor = "#111"
                            , fontName = "xft:Terminus (TTF)-12:bold"
                            , decoHeight = 21 
                            , urgentColor = "#000"
                            , urgentTextColor = "#63b8ff"
                            }

myManageHook = composeAll
    [ className =? "MPlayer"        --> doShift "fun"
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore 
    , className =? "Firefox"        --> doShift "web"
    , className =? "Chromium"       --> doShift "work"
    , className =? "Thunderbird"    --> doShift "im"
    , className =? "Claws-mail"     --> doShift "web"
    , className =? "Pidgin"         --> doShift "im"
    , className =? "Skype"          --> doShift "im"
    , className =? "Ekiga"          --> doShift "im"
    , className =? "Linphone"          --> doShift "im"
    , className =? "VirtualBox"     --> doShift "vm"
    , className =? "Gvim"           --> doShift "vim"
    , className =? "Vlc"            --> doShift "fun"
    , className =? "Streamtuner2"   --> doShift "fun"    
    , className =? "Deluge"         --> doShift "ext"    
    {-, title =? "ncmpcpp"              --> doShift "fun"-}
    {-, title =? "ncmpc"              --> doShift "fun"-}
    , title =? "streamripper"       --> doShift "fun"    
    {-, className =? "Chromium"       --> doFloat    -}
    , className =? "Gimp"           --> doShift "gimp"
    {-, isFullscreen                  --> doFullFloat-}
    {-, resource =? "Dialog"          --> doFloat-}
    ]

manageScratchPad :: ManageHook
manageScratchPad = scratchpadManageHook (W.RationalRect l t w h) 
    where
        h = 0.5         -- terminal height
        w = 1         -- terminal width
        t = 1 - h       -- distance from top edge
        l = (1 - w)/2   -- distance from left edge

myScratchpads = [
    NS "htop" "urxvt -fn 'xft:Terminus (TTF)-10' -e htop" (title =? "htop") 
        (customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3))
    , NS "ranger" "urxvt -fn 'xft:Terminus (TTF)-14' -e ranger" (title =? "ranger") 
        (customFloating $ W.RationalRect 0 0 1 1)
    , NS "weechat" "urxvt -fn 'xft:Terminus (TTF)-14' -e weechat-curses" (fmap (isInfixOf "weechat") title) 
        (customFloating $ W.RationalRect 0 0 1 1)
    , NS "alsamixer" "urxvt -fn 'xft:Terminus (TTF)-12' -e alsamixer -c0" (title =? "alsamixer") 
        (customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3))
    , NS "mpd" "urxvt -fn 'xft:Terminus (TTF)-12' -e ncmpcpp" (title =? "ncmpcpp") 
        (customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3))
    , NS "editor" "gvim -geom 201x21 -fn 'Terminus (TTF) 14' --role scratchEditor -c ':OpenSession! user'" (role =? "scratchEditor")
        (customFloating $ W.RationalRect 0 0 1 0.5)
    , NS "sudoeditor" "sudo gvim -geom 201x21 -fn 'Terminus (TTF) 14' --role scratchSudoEditor -c 'OpenSession! etc'" (role =? "scratchSudoEditor")
        (customFloating $ W.RationalRect 0 0 1 0.5)
    , NS "luakit" "luakit" (className =? "luakit") 
        (customFloating $ W.RationalRect (1/6) (1/6) (2/3) (2/3))
  ] where 
        role = stringProperty "WM_WINDOW_ROLE"
        cls = stringProperty "WM_CLASS"

manageNamedScratchpad :: ManageHook
manageNamedScratchpad = namedScratchpadManageHook myScratchpads


myLogHook h = dynamicLogWithPP $ xmobarPP            
            {
                  ppCurrent = xmobarColor "green" "" . wrap "" "" 
                , ppLayout = xmobarColor "#D5A148" "" 
                . (\ x -> case x of
                              "ResizableTall"             -> " R"
                              "Mirror ResizableTall"      -> "MR"
                              "Tabbed Bottom Simplest"    -> "TB"
                              "Full"                      -> " F"
                              "Magnifier Grid"            -> "MG"
                              "IM ResizableTall"          -> "IR"
                              "IM Mirror ResizableTall"   -> "MR"
                              "IM Tabbed Simplest"        -> "TS"
                              "IM Full"                   -> " F"
                              "IM Magnifier Grid"         -> "MG"
                              "Grid"                      -> " G"
                              _                           -> pad x
                            )
                , ppTitle   = xmobarColor "#9296D6"  "" . shorten 45
                , ppVisible = wrap "" ""
                , ppHidden = noScratchPad
                , ppUrgent = xmobarColor "red" "blue"
                , ppOutput = System.IO.hPutStrLn h
            } 
            where 
                noScratchPad ws = if ws == "NSP" then "" else ws

myStartupHook = setWMName "LG3D"

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig {
            terminal           = myTerminal
            , focusFollowsMouse  = myFocusFollowsMouse
            , borderWidth        = myBorderWidth
            , modMask            = myModMask
          -- numlockMask        = myNumlockMask
            , workspaces         = myWorkspaces
            , normalBorderColor  = myNormalBorderColor
            , focusedBorderColor = myFocusedBorderColor
            , keys               = myKeys
            , mouseBindings      = myMouseBindings
            , layoutHook         = myLayoutHook 
            , manageHook         = myManageHook <+> manageDocks <+> manageScratchPad <+> manageNamedScratchpad 
            , handleEventHook    = fullscreenEventHook
            , logHook = myLogHook xmproc  >>  updatePointer (Relative 0.5 0.5)
            , startupHook        = myStartupHook
    }
