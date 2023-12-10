if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RajbharSaheb/2023.git /2023 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /2023 
fi
cd /2023 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
