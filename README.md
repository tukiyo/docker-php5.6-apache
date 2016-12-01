php5.6

* files/apache.conf の DocumentRootを修正してください。

## cakephp 2の場合

* cakephpプロジェクトを ./src/ に置いてください。
    * src/app/ とかになるように。

* ./logs/ に apacheとphpのエラーを出力します。
    * ./logs/ の権限は777にしないとphpのエラーが出力されないので注意。
