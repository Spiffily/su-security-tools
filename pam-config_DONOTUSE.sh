#!/bin/bash
sed 's/password        [success=1 default=ignore]      pam_unix\.so obscure sha512/password        [success=1 default=ignore]      pam_unix\.so obscure sha512 minlen=10 remember=5/' /home/josh/pam.d/common-password
