echo "OS Version and release number"
lsb_release -a
echo "Kernel Version"
uname -r
echo "Availabe Shells"
cat /etc/shells
echo "CPU information"
cat /proc/cpuinfo
echo "MEMORY INFORMATION"
cat /proc/meminfo
echo "HARDDISK INFORMATION"
sudo hdparm -I/dev/sda
echo "FILE SYSTEM(MOUNTED)"
df -H
 
