apt update && apt upgrade -y
apt install git -y
_other_installs
pip3 install -U pip
git clone https://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@github.com/gillzxo/Testapp
cd Testapp
pip3 install -U -r requirements.txt
_externals
python3 main.py
