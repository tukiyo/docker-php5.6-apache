rm -f cakephp/.gitkeep
rmdir cakephp

git clone -b 2.x git://github.com/cakephp/cakephp.git
cd cakephp
chmod -R 777 app/tmp
