@echo off 
title 关闭常见的危险端口 
echo 正在启动防火墙 请稍候… 
sc config SharedAccess start= auto > nul A
net start SharedAccess > nul 
echo 防火墙已经成功启动 
echo. 
echo 正在关闭常见的危险端口 请稍候… 
echo. 
echo 正在关闭135端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 135 name = 135 mode = DISABLE scope = ALL profile 

= ALL 
echo 正在关闭137端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 137 name = 137 mode = DISABLE scope = ALL profile 

= ALL 
echo 正在关闭138端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 138 name = 138 mode = DISABLE scope = ALL profile 

= ALL 
echo 正在关闭139端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 139 name = 139 mode = DISABLE scope = ALL profile 

= ALL 
echo 正在关闭445端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 445 name = 445 mode = DISABLE scope = ALL profile 

= ALL 
echo 正在关闭3389端口 请稍候… 
netsh firewall set portopening protocol = ALL port = 3389 name = 3389 mode = DISABLE scope = ALL 

profile = ALL 
echo 常见的危险端口已经关闭 
echo. 
echo 按任意键退出 
pause>nul 
