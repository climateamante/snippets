- ``regex``
- textmate.regex.preferences
	> Default Textmate Regex Pattern for File and Folder Preferences
- version: v.0.0.1
- Updated: 03/15/2018



### Instructions: ###

1. Preferences
1. Click Advanced
1. Select Folder References

#### File Pattern ####
```regex
!(/\.(?!htaccess)[^/]*|\.(tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$
```

#### Folder Pattern ####
```regex
!.*/(\.[^/]*|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$
```
