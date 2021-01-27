#!/bin/bash
# Author: Zhousy：Main 
# QQ： 1784742966
# URL Page： http://rchome.ixcmstudio.cn/
# URL GitHub： https://github.com/Zhousy233
# URL Gitee ： https://gitee.com/Zhousy

#====脚本颜色变量-------------#
r='\033[1;31m'	#---红
g='\033[1;32m'	#---绿
y='\033[1;33m'	#---黄
b='\033[1;36m'	#---蓝
w='\033[1;37m'	#---白
#-----------------------------#
rw='\033[1;41m'    #--红白
wg='\033[1;42m'    #--白绿
ws='\033[1;43m'    #--白褐
wb='\033[1;44m'    #--白蓝
wq='\033[1;45m'    #--白紫
wa='\033[1;46m'    #--白青
wh='\033[1;46m'    #--白灰
h='\033[0m'		   #---后缀
bx='\033[1;4;36m'  #---蓝 下划线
wy='\033[1;41m' 
h='\033[0m'
#-----------------------------#
# 交互 蓝
JHB=$(echo -e "${b}-=>${h}")
# 交互 红
JHR=$(echo -e "${r}-=>${h}")
# 交互 绿
JHG=$(echo -e "${g}-=>${h}")
# 交互 黄
JHY=$(echo -e "${y}-=>${h}")
#-----------------------------
# 提示 蓝
PSB=$(echo -e "${b} ::==>${h}")
# 提示 红
PSR=$(echo -e "${r} ::==>${h}")
# 提示 绿
PSG=$(echo -e "${g} ::==>${h}")
# 提示 黄
PSY=$(echo -e "${y} ::==>${h}")
null="/dev/null"
DISK=`find /dev -type b | grep -oPm1 '.*[shv]d[a-d](?=[0-9]*$)'`
#========变量
#------Red C Linux
clear;

ECHOA=$(echo -e "${w} ____           _    ____    _     _                   ${h}") 
ECHOB=$(echo -e "${g} |  _ \ ___  __| |  / ___|  | |   (_)_ __  _   ___  __ ${h}")
ECHOC=$(echo -e "${b} | |_) / _ \/ _  | | |      | |   | | ._ \| | | \ \/ / ${h}")
ECHOD=$(echo -e "${y} |  _ <  __/ (_| | | |___   | |___| | | | | |_| |>  <  ${h}")
ECHOE=$(echo -e "${r} |_| \_\___|\__,_|  \____|  |_____|_|_| |_|\__,_/_/\_\ ${h}")
echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE" | lolcat 2> ${null} || echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE"
#========选项
Tips1=$(echo -e "${b}||====================================================================||${h}")
Tips2=$(echo -e "${b}||  Name:        Red C Linux Desktop Environment installer.      *alpha                    ${h}")  
echo -e "$Tips1\n$Tips2n " | lolcat 2> ${null} || echo -e "$Tips1\n$Tips2n "
echo;
echo -e "${PSY} ${g}Pandaos dock for rclinux                   [1]${h}"
echo -e "${PSG} ${g}enough                                     [2]${h}"
echo;
echo -e "${PSG} ${y}What are the tasks[1,2,3..]${h} ${JHB} "
read  principal_variable

if [[ ${principal_variable} == 1 ]];then
    sudo apt install g++ qt5-default qttools5-dev-tools libxcb-image0-dev libxcb-composite0-dev libxcb-ewmh-dev libqt5x11extras5-dev libxcb-damage0-dev libqt5svg5-dev libxtst-dev libkf5windowsystem-dev
    git clone https://gitee.com/Zhousy233/pandaosdock.git
    cd pandaosdock
    mkdir build
    cd build
    read -p "input your location such /home/rc/Desktop/pandadock/pandaos-dock.pro ~" loc
    qmake ${loc} -o Makefile
    make && make install
    
                            
			fi
