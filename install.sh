#/bin/bash
echo "git-multi-status"
echo "By Francisco Matelli Matulovic"

#SCRIPTS
rm -rf /bin/git-multi-status
cp git-multi-status.sh /bin/git-multi-status
sudo chmod +x /bin/git-multi-status

rm -rf /bin/git-multi-pull
cp git-multi-pull.sh /bin/git-multi-pull
sudo chmod +x /bin/git-multi-pull

rm -rf /bin/gacr
cp gacr.sh /bin/gacr
sudo chmod +x /bin/gacr

echo "Installation successfully. Now you can run 'git-multi-status', 'git-multi-pull' and 'gacr' command from any directory"
