# netcheck

Bash script that checks if you are still talking to the network. Change the `ip` variable to integrate into your environment. Made for the Raspberry Pi as the wireless connection gets lost whenever there is a problem with the network router or it is restarted. 

## Usage

1. Open netcheck.sh with your favorite text editor:
```
nano netcheck.sh
```

2. Edit the IP address:
```
ip=<your.secret.ip.addr>
```

3. Save and close the file

4. Add the following line to `/etc/rc.local` to launch the script on boot:
```
su - pi -c /abs/path/to/netcheck.sh &
```

That's it! If you have better instructions on how to launch it on boot, let me know!