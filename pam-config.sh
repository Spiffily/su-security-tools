#!/bin/bash
pampath=/home/josh/pam.d
password	[success=1 default=ignore]	pam_unix.so obscure sha512 minlen=10 remember=5
