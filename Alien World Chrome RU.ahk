MsgBox, 4160, Alien World Bot, Для запуска бота нажмите F1`nДля открытия сайта нажмите F2`nДля перезапуска программы нажмите F3`nДля полного закрытия программы нажмите F4, 2
F1::
    MsgBox, 4160, Alien World Bot,Бот запущен, 1
    Loop
    {
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\mine.png ;кнопка mine
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\claim.png ;кнопка claim
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
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\capcha.png ;капча, но сейчас не актуальна
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
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\approve.png ;кнопка approve в доп окне
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\mining_hub.png ;кнопка mining hub
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\claim_hub.png ;кнопка claim в hud
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\close.png ;крестик без бага
        if (errorlevel == 0) ;
        {
            BlockInput, SendAndMouse
            MouseMove, %x%, %y%
            sleep, 2000
            Click, %x%, %y%
            BlockInput, Default
            sleep, 100
        }
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\mine\close_hub.png ;крестик с багом
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

;запуск браузера
F2::
    Run, chrome.exe, , Max, ;заменить chrome.exe на ваш браузер при необходимости
    sleep 2000
    SendInput, https://play.alienworlds.io/ {enter}
    Loop
    {
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\login.png ;кнопка login
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
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\login1.png ;если аккаунт деавторизовался, думаю не актуально
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
        ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_ScriptDir%\img\site\mine_hub.png ;кнопка перехода на страницу майнинга
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

;перезапуск
F3::Reload

;закрытие
F4::ExitApp