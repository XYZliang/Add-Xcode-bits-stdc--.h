#!/bin/bash
#!/bin/sh

###
# @Author: XYZliang
# @Date: 2021-01-30 21:47:42
 # @LastEditTime: 2021-01-30 22:45:52
###

folder1="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1"
folder2="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include"
workdir=$(pwd)

function exist() {
    if [ -f "$1/bits/stdc++.h" ]; then
        echo "执行成功！"
    else
        echo "执行失败，请注意控制台输出。"
    fi
}

function trychomd() {
    if [ -x "$1" ]; then
        echo "文件夹可读"
    else
        echo "文件夹不可读，赋予权限"
        chmod +755 "$1"
    fi
}

function newfolder() {
    cd "$1" || exit
    mkdir -m 755 "bits"
    echo "创建bits"
}

function copystdc() {
    cp "$workdir/stdc++.h" "$1/bits/stdc++.h"
    echo "复制stdc++.h"
}

function doplan() {
    trychomd "$1"
    newfolder "$1"
    copystdc "$1"
    exist "$1"
}

if [ -d "$folder1" ]; then
    echo "v1文件夹存在，执行方案一"
    doplan "$folder1"
else
    echo "v1文件夹存在，执行方案二"
    doplan "$folder2"
fi
