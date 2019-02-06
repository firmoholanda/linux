#!/bin/sh
# script to visualize fowarging emails on zimbra accounts
# run on zimbra user
for account in `zmprov -l gaa`; 
    do
        forwardingaddress=`zmprov ga $account |grep 'zimbraPrefMailForwardingAddress' |sed 's/zimbraPrefMailForwardingAddress: //'`
        if [ "$forwardingaddress" != "" ]; then
            echo "$account is forwarding to $forwardingaddress"
        else
        forwardingaddress=""
        fi
    done