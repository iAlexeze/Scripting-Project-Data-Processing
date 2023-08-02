BEGIN{
}
#
# main logic goes in here
#
{
isdir1 = "[ -d " $1 " ] "
isdir2 = "[ -d " $2 " ] "
scriptname = "up2low"
awkscriptname = "rename.awk"
sfile = $1
dfile = $2
#
# we are not suppose to rename dirs in source or destination
#
#
# make sure we are renaming our self if in same dir
#
if ( sfile == scriptname || sfile == awkscriptname )
next
else if( ( system(isdir1) ) == 0 || system((isdir2)) == 0 )
{
printf "%s or %s is a directory and can't be renamed to lower case\n",sfile,dfile
next # continue with next recored
}
else if ( sfile == dfile )
{
printf "Skiping, \"%s\" is already in lowercase\n",sfile
next
}
else # everythink is okay, rename it to lowercase
{
mvcmd = "mv " sfile " " dfile
printf "Renaming %s to %s\n",sfile,dfile
system(mvcmd)
}
}
#
# End action, if any, e.g. clean ups
#
END{
}
