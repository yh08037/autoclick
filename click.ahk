CoordMode, Mouse, Screen
x := []
y := []

Home::
ExitApp
return

PgUp::
x := []
y := []
return

PgDn::
MouseGetPos, xpos, ypos
x.push(xpos)
y.push(ypos)
return

End::
loop % x.Length()
{
    MouseClick left, % x[A_Index], % y[A_Index], , 0
}
return