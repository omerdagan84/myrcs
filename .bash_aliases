search_func() {
	if [ "$#" -lt 2 ]; then
		find . -name "*$1*"
	else
		find $1 -name "*$2*"
	fi
}

function mkdircd () {
	mkdir -p "$@" && eval cd "\"\$$#\"";
}

#alias vpnc='echo "224gunrsdi!" | sudo openconnect -b -u omerx.dagan@intel.com --passwd-on-stdin -c ~/.cert/certificate.p12 --key-password-from-fsid vpn.intel.com'
alias search=search_func
#alias vpnd='sudo pkill openconnect'
alias python=python3.6
alias glog='git log --oneline -n'

# CD related alias
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias cd6="cd ../../../../../.."

