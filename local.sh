echo "Performing local operations first"

echo "Copying BOF files to loadkod..."
find /mnt/d/Meridian59/kod/ -name '*.bof' -print0 | xargs -0 cp -t /mnt/d/Meridian59/run/server/loadkod/

echo "Copying RSC files to rsc..."
find /mnt/d/Meridian59/kod/ -name '*.rsc' -print0 | xargs -0 cp -t /mnt/d/Meridian59/run/server/rsc/

echo "Finished local update..."


