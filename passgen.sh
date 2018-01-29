#!/bin/bash
echo
echo "**************************************"
echo "**********PASSWORD*GENERATOR**********"
echo "**************************************"
echo
echo "Enter a string to encode: "
read string
echo
echo "Enter the salt: "
read salt
echo
echo "Enter desired password length: "
read length
pwd=`echo -n "$salt$string" | openssl dgst -sha256 | awk '{print $NF}' \
| xxd -r -p | base64 | head -c $length`
echo
echo "Your password is:"
echo 
echo $pwd
echo

