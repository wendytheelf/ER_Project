# COMPLETE THE REST HERE

printf 'Would you like to sync with the github server: (y/n)?'
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then 

    # PULL CLOUD REPO TO LOCAL
    git pull 
    
    # change buffer settings 
    git config http.postBuffer 524288000

    # SYNC TO LOCAL REPO TO CLOUD 
    read -p 'Enter message' msg
    echo "commit message = " $msg; 
    
    # ADD CHANGES TO QUEUE
    git add ../../; 
    
    # MAIN BRANCH
    git commit -m "$msg"; 

    # PUSH NON-MAIN BRANCH
    # git push  -u origin branch_name

    # PUSH MAIN BRANCH
    git push

else
    echo NOT SYNCING TO GITHUB!
fi
