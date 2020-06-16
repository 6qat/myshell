echo "Applying my settings..." 

function init_zsh() {
	echo "ZSH configuration..."
	source <(kubectl completion zsh)
}
function init_bash() {
	echo "BASH configuration..."
	source <(kubectl completion bash)
}

if [ $SHELL = '/usr/bin/zsh' ]
then
	init_zsh
elif [ $SHELL = "/bin/bash" ] 
then
	init_bash
else
	echo "Shell not supported."
fi


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

# Kubernetes stuff
alias k=kubectl
complete -F __start_kubectl k

# Anaconda
if [ -f "/home/guiga/apps/anaconda3/etc/profile.d/conda.sh" ]; 
then
        . "/home/guiga/apps/anaconda3/etc/profile.d/conda.sh" 
else
        export PATH="/home/guiga/apps/anaconda3/bin:$PATH"
fi

