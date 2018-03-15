- ``regex``
- textmate.regex.preferences
	> Show Hidden Files and Folders in the Textmate Project Drawer
- version: v.0.0.1
- Updated: 03/15/2018



### Instructions: ###

1. Preferences
1. Click Advanced
1. Select Folder References

#### File Pattern ####
```regex
!(/\.(?!\W*)[^/]*|\.(gitkeep|DS_Store|tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$
```

#### Folder Pattern ####
```regex
!.*/(.git|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$
```
