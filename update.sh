echo "Performing local operations first"

echo "Copying BOF files to loadkod..."
find /mnt/d/Meridian59/kod/ -name '*.bof' -print0 | xargs -0 cp -t /mnt/d/Meridian59/run/server/loadkod/

echo "Copying RSC files to rsc..."
find /mnt/d/Meridian59/kod/ -name '*.rsc' -print0 | xargs -0 cp -t /mnt/d/Meridian59/run/server/rsc/

echo "Synchronizing loadkod on public game server..."
sshpass -f /secure-server.us.pass rsync --size-only /mnt/d/Meridian59/run/server/loadkod/* root@secure-server.us:/meridian/run/server/loadkod/

echo "Synchronizing rsc on public game server..."
sshpass -f /secure-server.us.pass rsync --size-only /mnt/d/Meridian59/run/server/rsc/* root@secure-server.us:/meridian/run/server/rsc/


