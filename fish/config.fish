if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings
set fish_greeting
set -gx EDITOR vim
set -gx TERM xterm
set -gx QT_QPA_PLATFORMTHEME qt5ct


set fish_cursor_unknown block
set fish_cursor_insert block
set fish_cursor_default block
set fish_cursor_visual block

#if status --is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR = 1
#        exec xinit
#    end
#end
