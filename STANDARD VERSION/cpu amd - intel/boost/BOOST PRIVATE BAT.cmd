wmic process where name="mqsvc.exe" CALL setpriority "realtime"                      psyshop
netsh int tcp set global autotuning=high                                           psyshop
netsh int tcp set global dca=enabled                                             psyshop
netsh int ip reset C:\tcplog.txt                                                   psyshop
netsh int tcp set global netdma=enabled                                           psyshop
ipconfig /release                                                                  psyshop
ipconfig /renew                                                                      psyshop
ipconfig /flushdns                                                                 psyshop
netsh int tcp set global rss=enable                                               psyshop 