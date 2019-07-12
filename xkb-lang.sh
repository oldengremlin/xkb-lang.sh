# In the script that called this, set -e has been set. Errors in any
# command will abort the entire script and X won't start. By putting
# this part in a subshell, any errors will abort the subshell - which
# we want, in case sim fails.

# The 'true' at the end ensures that the entire script will never end
# with an error code, even if there was an error.

(
cd /usr/share/X11/xkb/ && xkbcomp keymap/three_groups $DISPLAY &>/dev/null
)

true
