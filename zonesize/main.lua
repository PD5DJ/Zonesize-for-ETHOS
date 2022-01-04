


local function paint(widget)
  local Screen_Width, Screen_Height = lcd.getWindowSize()
  
  local Screen_Right = Screen_Width
  local Screen_Left = 0
  local Screen_Top = 0
  local SCreen_Bottom = Screen_Height

  lcd.font(FONT_XS_BOLD)
  lcd.color(lcd.RGB(120,120,120))
  lcd.drawFilledRectangle(0,0,Screen_Width,Screen_Height)
  
  lcd.color(lcd.RGB(248,252,248))
  
  lcd.drawText(Screen_Left,Screen_Top,"X"..Screen_Left, LEFT)
  lcd.drawText(Screen_Left,Screen_Top + 10,"Y"..Screen_Top, LEFT)
  
  lcd.drawText(Screen_Left + Screen_Width,Screen_Top,"X"..(Screen_Left + Screen_Width), RIGHT)
  lcd.drawText(Screen_Left + Screen_Width,Screen_Top +10,"Y"..Screen_Top, RIGHT)
  
  lcd.drawText(Screen_Left + (Screen_Width / 2),Screen_Top + (Screen_Height /2) - 10,"W"..Screen_Width, CENTERED)
  lcd.drawText(Screen_Left + (Screen_Width / 2),Screen_Top + (Screen_Height /2) ,"H"..Screen_Height, CENTERED)
  
  lcd.drawText(Screen_Left,(Screen_Top + Screen_Height) - 26,"X"..Screen_Left, LEFT)
  lcd.drawText(Screen_Left,(Screen_Top + Screen_Height) - 16,"Y"..(Screen_Top + Screen_Height), LEFT)
  
  lcd.drawText(Screen_Left + Screen_Width,(Screen_Top + Screen_Height) - 26,"X"..(Screen_Left + Screen_Width), RIGHT)
  lcd.drawText(Screen_Left + Screen_Width,(Screen_Top + Screen_Height) - 16,"Y"..(Screen_Top + Screen_Height), RIGHT)	
    

end


local function init()
    system.registerWidget({key="zsize", name="Zone Size", paint=paint})
end

return {init=init}