on selectIPA(ipaPath)
  tell application "System Events"
    keystroke "g" using {command down, shift down}
    delay 1
    keystroke ipaPath
    delay 1
    keystroke return
    delay 1
    keystroke return
    delay 1
  end tell
end selectIPA

on startInstall()
  set proccessName to "Sideloadly"
  set foundElement to false
  tell application "System Events"
    set startButton to first UI element of window 1 of application process proccessName whose name is "Start"
    click startButton

    delay 1

    repeat while true
      set buttonState to enabled of startButton
      if buttonState is true then
        delay 1
        set allUIElements to UI elements of window 1 of process proccessName
        repeat with uiElement in allUIElements
          set elementType to role of uiElement
          if elementType is "AXStaticText" then
            set elementValue to value of uiElement as text
            -- log elementValue
            if elementValue contains "Done" then
              set foundElement to true
              exit repeat
            end if
          end if
        end repeat
        exit repeat
      end if
      delay 1
    end repeat
  end tell
  return foundElement
end startInstall

on run argv
  set proccessName to "Sideloadly"
  set theIPAPath to POSIX path of item 1 of argv

  tell application proccessName
    activate
  end tell

  delay 5

  log "start intalling..."
  tell application "System Events"
    set startButton to first UI element of window 1 of application process proccessName
    click startButton
  end tell

  delay 3

  selectIPA(theIPAPath)

  delay 1

  set tips to ""
  set result to startInstall() as boolean
  if result is true then
    set tips to "install success"
  else
    set tips to "install fail"
  end if

end run
