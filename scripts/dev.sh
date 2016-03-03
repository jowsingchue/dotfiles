#!/bin/bash

#
#   Usage:
#
#       $ PASSWORD=<yourpassword> bash dev.sh
#

gnome-terminal --maximize \
        --window \
            -t 'docker' \
                --working-directory=/home/jowsingchue/personal/playground/ \
                -e "/bin/bash -c 'echo $PASSWORD | sudo -S docker start smartsense-mongo; exec /bin/bash -i'" \
            --tab -t 'gohan-server' \
                --working-directory=/home/jowsingchue/personal/work/gohan-odoo/ \
                -e "/bin/bash -c './start-server.sh; exec /bin/bash -i'" \
            --tab -t 'wutichai-server' \
                --working-directory=/home/jowsingchue/personal/work/wutichai-odoo/ \
                -e "/bin/bash -c './start-server.sh; exec /bin/bash -i'" \
            --tab -t 'smartsense-server' \
                --working-directory=/home/jowsingchue/personal/work/smartsense-fullstack-gps/mern/ \
                -e "/bin/bash -c 'echo $PASSWORD | sudo -S docker start smartsense-mongo; npm run start; exec /bin/bash -i'" \
        --window \
            -t 'gohan' \
                --working-directory=/home/jowsingchue/personal/work/gohan-odoo/ \
                -e "/bin/bash -c 'exec /bin/bash -i'" \
            --tab -t 'wutichai' \
                --working-directory=/home/jowsingchue/personal/work/wutichai-odoo/ \
                -e "/bin/bash -c 'exec /bin/bash -i'" \
            --tab -t 'smartsense' \
                --working-directory=/home/jowsingchue/personal/work/smartsense-fullstack-gps/ \
                -e "/bin/bash -c 'exec /bin/bash -i'" \
            --tab -t 'etc' \
                --working-directory=/home/jowsingchue/ \
                -e "/bin/bash -c 'exec /bin/bash -i'"
