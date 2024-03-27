#luks-402a46aa-b4cf-49dc-9e02-d453d8e3689c
#!/bin/sh
udisksctl unlock -b /dev/sda1
sudo mount /dev/mapper/luks-402a46aa-b4cf-49dc-9e02-d453d8e3689c /mnt/DHM-ICUSUITE-DS1

