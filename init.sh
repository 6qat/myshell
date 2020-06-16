echo "Applying my settings..." 

export PATH=$HOME/apps/bin:$PATH

alias running_services='systemctl list-units  --type=service  --state=running --no-pager'
alias active_services='systemctl --type=service --state=active --no-pager'

function myip() {
        curl http://icanhazip.com      

        ip addr | grep inet$IP | \
        cut -d"/" -f 1 | \
        grep -v 127\.0 | \
        grep -v \:\:1 | \
        awk '{$1=$1};1'
}

# Correct Tilix bug:
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi


