--
-- Change desktop background to file from argv[1]
-- 
-- Usage: osascript desktop-change-wallpaper.scpt wallpaper-filename.jpg

on run argv
        set wallpapers_dir to "/Users/overmind/Pictures/wallpapers/"
	set N to 6
	repeat with k from 1 to N
	  tell application "System Events" to key code 124 using {option down}
	    delay 1
	  tell application "System Events" to set picture of every desktop to wallpapers_dir & item 1 of argv
	    delay 1
	 end repeat
end run
