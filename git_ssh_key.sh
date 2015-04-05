ls -al ~/.ssh
# Lists the files in your .ssh directory, if they exist

ssh-keygen -t rsa -C "nitsuaq@gmail.com"
# Creates a new ssh key, using the provided email as a label

# start the ssh-agent in the background
eval "$(ssh-agent -s)"

# add the generated ssh key to the ssh-agent
ssh-add ~/.ssh/id_rsa

# Copy contents to SSH keys of github within settings
gedit ~/.ssh/id_rsa.pub

# Confirm that the key works
ssh -T git@github.com


