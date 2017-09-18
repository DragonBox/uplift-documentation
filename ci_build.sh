export PATH=/usr/local/bin:$PATH
pip3 install sphinx
make html
rsync -avz --delete build/* ovhwwtk:~/www/private/jerome/uplift-docs/
