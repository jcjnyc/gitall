## I'M USING GITHUB BUT YOU CAN USE OTHER OF COURSE
GITUSER=git
GITREPO=github.com

## CHNAGE THIS DIR TO BE WHERE YOU STORE YOUR GIT REPOS LOCAL 
LOCAL_DIR=/home/jcj/git

## USAGE - NOTE, DON'T INCLUDE THE .git 
## ./upate_local_repos.sh PATH/REPP REPO/PATH 



for i in $@; do
    echo 
    cd $LOCAL_DIR
    echo "Working on $i"
    if [ -d $i ]; then
	cd ${i};

	## MAKE SURE GITALL IS IN YOUR PATH
	gitall

    else
	cd $LOCAL_DIR
	mkdir -p ${i}
	echo "RUNNING: git clone ${GITUSER}@{$GITREPO}:${i}.git ${i}"
	git clone ${GITUSER}@{$GITREPO}:${i}.git ${i}
    fi
done

