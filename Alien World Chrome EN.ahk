MsgBox, 4160, Alien World Bot, For start bot press F1`nFor open website press F2`nFor restart program press F3`nTo close program press F4, 2
F1::
    MsgBox, 4160, Alien World Bot,Script was start, 1
    Loop
    {
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\mine.png ;mine button
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\claim.png ;claim button
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        /*
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\capcha.png ;captcha, but not relevant now
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        */
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\approve.png ;the approve button in the additional window
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\mining_hub.png ;mining hub button
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\claim_hub.png ;the claim button in the hud
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\close.png ;cross when window without a bug
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\close_hub.png ;cross when window with a bug
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
    }
Return

;start browser
F2::
    Run, chrome.exe, , Max, ;replace chrome.exe to your browser
    sleep 2000
    SendInput, https://play.alienworlds.io/ {enter}
    Loop
    {
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\login.png ;login button
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        /*
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\login1.png ;if the account is deauthorized, I think it is not relevant
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        */
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\mine_hub.png ;button to go to the mining page
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
            Break
        }
    }
return

;restart
F3::Reload

;closure
F4::ExitApp