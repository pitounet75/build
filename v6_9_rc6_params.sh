lexport EXTRAWIFI=no
for i in $(seq 0 255); do
  mknod -m0660 /dev/loop$i b 7 $i
  chown root.disk /dev/loop$i
done

