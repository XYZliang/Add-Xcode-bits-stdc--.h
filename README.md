# Add Xcode bits/stdc++.h



## Language

English  ｜  [中文](README CHINESE.md)

## Description

Add bits/stdc++.h to macOS Xcode one-click to solve the problem of error 'bits/stdc++.h' file when using bits/stdc++.h header files in Xcode, and test it on macOS Big Sur 11.2 Xcode12.4, which is theoretically applicable to all systems and Xcode.

All header files come from [GitHub-GNU compiler collection (GCC)](https://github.com/gcc-mirror/gcc) and Ubuntu GCC-10 version, and modify bits/os_def The ines file adapts to the macOS environment.

Every time you update or download a new Xcode-beta to replace old Xcode, these files will disappear, so you need to manually add these files every time, so this script file is a little troublesome.



## How to use

Download or clone the file locally, open the terminal, and drag the runme.sh to the terminal to enter and enter to run.



## Error?

1. First try to run the script using the root permission, that is, drag the su root into the script to run.
2. If there is a large number of header file errors in Xcode after running, try using the old version of the bits/stdc++.h file, either delete the relevant inclusion statement, or add the relevant missing header file.