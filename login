#%PAM-1.0

auth       required     pam_securetty.so
auth       requisite    pam_nologin.so
auth       include      system-local-login
account    include      system-local-login
session    include      system-local-login
password   include      system-local-login
auth       optional     pam_kwallet5.so
session	   optional     pam_kwallet5.so auto_start force_run
auth       optional     pam_gnome_keyring.so
session    optional     pam_gnome_keyring.so auto_start
