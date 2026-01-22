# Disable sddm (autologin) because my machine is multiuser
sudo sed -i '/User=/c\User=' /etc/sddm.conf.d/autologin.conf
sudo sed -i '/Session=/c\Session=' /etc/sddm.conf.d/autologin.conf
