#!/bin/sh
set -e

nee=~/neeconfig
if [ -f $nee ]; 
then
   echo "neeconfig is available"
else :
    git clone https://github.com/mitch1009/neeconfig.git ~/neeconfig
fi

echo "
nee=~/neeconfig/_.bashrc
[ -f \$nee ] && source \$nee"
|tee ~/.bashrc
bash
echo "$HOSTNAME has been configured by $USER on \date"
