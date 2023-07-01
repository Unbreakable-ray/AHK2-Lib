#Requires AutoHotkey v2.0

;@xMaxrayx @Unbreakable-ray start  at 09:10:20  on 1/7/2023   (24H Formart)  (UTC +2)

;///////////Slect debug mode Gui
debugModeGUI(){

; make varuable isDebugMode := false

Author := "@xMaxrayx @Unbreakable-ray"

;////
debugModeGUI := Gui()
debugModeGUI.OnEvent("Close", debugModeGUIGuiEscape)
debugModeGUI.OnEvent("Escape", debugModeGUIGuiEscape)
debugModeGUI.opt("-MinimizeBox -MaximizeBox +AlwaysOnTop")
Radio_True := debugModeGUI.Add("Radio", " x24 y96 w90 h19 ", "Yes [True]")
debugModeGUI.Add("Text", "x16 y32 w190 h21 +0x200", "Do you want Enable Debug mode?")
debugModeGUI.Add("GroupBox", "x8 y8 w268 h118", "Select")
Radio_False := debugModeGUI.Add("Radio", "x184 y96 w73 h23", "No [False]")
btnOK := debugModeGUI.Add("Button", "x80 y144 w110 h31", "Close")
btnOK.OnEvent("Click", (*) =>  close())
SB := debugModeGUI.Add("StatusBar", , "Select Debug  mode `t `t" . Author)
Radio_True.OnEvent("Click", (*) => RadTrue())
Radio_False.OnEvent("Click", (*) => RadFalse())
debugModeGUI.OnEvent('Close', (*) => ExitApp())
debugModeGUI.Title := "Select debug mode"
debugModeGUI.Show("w288 h207")




Return


RadTrue(){
global isDebugMode
Radio_False.Value := 0
global isDebugMode := true
}

RadFalse(){
    global isDebugMode
    Radio_True.Value := 0
    global isDebugMode := false
}


debugModeGUIGuiEscape(*){
    debugModeGUI.Destroy
}

close(){
    debugModeGUI.Destroy
    
}

} ;end of debug mode
;////////////////


