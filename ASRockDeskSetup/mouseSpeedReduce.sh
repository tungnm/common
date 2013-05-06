#written by Tung - May 12
#look for mouse id or name:
#xinput --list

#setting mouse sensitivity:
id=$(xinput --list|grep Razer|sed "s/.*id=//"|sed "s/\t.*//")
xinput --list
echo "the id of Razor mouse is: $id"
echo "xinput --set-prop $id \"Device Accel Constant Deceleration\" 4" >>~/.zshrc
