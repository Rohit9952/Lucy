if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rohit9952/Lucy.git /Lucy 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALAPATHY-FILTER-BOT 
fi
cd /Lucy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
