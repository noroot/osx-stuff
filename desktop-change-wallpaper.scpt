--
-- Change desktop background to file from argv[1]
-- change wallppapers on every desktop
-- Usage: osascript desktop-change-wallpaper.scpt wallpaper-filename.jpg

on run argv
        set wallpapers_dir to "/Users/overmind/Pictures/wallpapers/" -- wallppapers directory
	set N to 6 -- desktops count
	repeat with k from 1 to N
	  tell application "System Events" to key code 124 using {option down} -- swtich to next desktop through sending keystrokes
	    delay 1 -- wait until desktop switch
	  tell application "System Events" to set picture of every desktop to wallpapers_dir & item 1 of argv
	    delay 1
	 end repeat
end run
