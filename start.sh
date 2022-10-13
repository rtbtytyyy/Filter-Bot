if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hansaka-Anuhas/Filter-Bot.git /Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filter-Bot
fi
cd /Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
