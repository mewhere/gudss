apt update && apt upgrade -y
apt install git -y
_other_installs
pip3 install -U pip
git clone https://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@github.com/gillzxo/Testapp
cd Testapp
pip3 install -U -r requirements.txt
_externals
python bot
