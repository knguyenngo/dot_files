if status is-interactive
    # Commands to run in interactive sessions can go here
    alias preload="pkill -USR1 polybar"
    alias snip="maim --select | xclip -selection clipboard -t image/png"
    alias fetch="fastfetch --logo ~/pics/asa3.png --logo-type kitty-direct --logo-width 43 --logo-height 23"
    alias nlight="redshift -P -O 4600"
    set fish_color_autosuggestion "#2e7376" 
end
