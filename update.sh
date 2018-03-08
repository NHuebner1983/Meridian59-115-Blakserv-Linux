echo "Synchronizing loadkod on public game server..."
sshpass -f /secure-server.us.pass rsync --size-only /mnt/d/Meridian59/run/server/loadkod/* root@secure-server.us:/meridian/run/server/loadkod/

echo "Synchronizing rsc on public game server..."
sshpass -f /secure-server.us.pass rsync --size-only /mnt/d/Meridian59/run/server/rsc/* root@secure-server.us:/meridian/run/server/rsc/


