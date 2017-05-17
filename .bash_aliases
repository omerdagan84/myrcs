search_func() {
	if [ "$#" -lt 2 ]; then
		find . -name "*$1*"
	else
		find $1 -name "*$2*"
	fi
}

#alias vpnc='echo "224gunrsdi!" | sudo openconnect -b -u omerx.dagan@intel.com --passwd-on-stdin -c ~/.cert/certificate.p12 --key-password-from-fsid vpn.intel.com'
alias vpnc='echo "gunr7357730!" | sudo openconnect -b -u omerx.dagan@intel.com --passwd-on-stdin -c ~/.cert/certificate.p12 --key-password-from-fsid vpn.intel.com'
alias search=search_func
alias vpnd='sudo pkill openconnect'
alias densim='cd ~/work/denverton/ && ./simics targets/arc-coh/coh.simics'
alias python=python3
alias glog='git log --oneline -n'
#alias vpnc='echo "qwerty!@3" | sudo openconnect -b -u omerx.dagan@intel.com --passwd-on-stdin -c ~/.cert/certificate.p12 --key-password-from-fsid vpn.intel.com'

function send_coh() {
        local input=$1
        local output=$2
        local dest=$3
		local ver=$(date '+%d%m%y%H%M')

		if [ -z $1 ]; then
			input=/home/omerdagx/work/ponew/sdk/coh/binaries/spi/flash_jffs2.bin
		fi
        if [ -z $output ]; then
			output=/local/dagan/flash_$ver
        fi
        if [ -z $3 ]; then
            dest=22
        fi
set -x
        sshpass -p 'SVcore2@' scp -o StrictHostKeyChecking=no -r $input lab_cvgv@cvg-sv-h0${dest}.iil.intel.com:$output
set +x
}
