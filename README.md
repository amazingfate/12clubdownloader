# 12clubdownloader
download script of 12club in nankai

It will download all the files in the page using aria2.

It is a shell script, so if you use windows...... Don't even hope it can work on cmd or powershell, you should try a Cygwin environment such as MSYS2: http://sourceforge.net/projects/msys2/. It works fine in MSYS2 on my computer.
Requirements
============
* aria2
* curl

Usage
=====
./12clubdownloader.sh [url] [download directory]

For example:```./12clubdownloader.sh http://12club.nankai.edu.cn/programs/1073 /home```
