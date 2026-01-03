if [ -z $UPSTREAM_REPO ]
then
    echo "Cloning main Repository"
    git clone https://github.com/Mongodb-ai/Advance-premium /TGM-BOT
else
    echo "Cloning Custom Repo from $UPSTREAM_REPO "
    git clone $UPSTREAM_REPO /TGM-BOT
fi
cd /TGM-BOT
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py

