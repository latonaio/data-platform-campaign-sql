# data-platform-campaign-sql 

data-platform-campaign-sql は、データ連携基盤において、キャンペーンデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-campaign-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-campaign-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-campaign-sql-header-data.sql（データ連携基盤 キャンペーン - ヘッダデータ）
* data-platform-campaign-sql-header-doc-data.sql（データ連携基盤 キャンペーン - ヘッダ文書データ）
* data-platform-campaign-sql-event-data.sql（データ連携基盤 キャンペーン - イベントデータ）
* data-platform-campaign-sql-game-data.sql（データ連携基盤 キャンペーン - ゲームデータ）
* data-platform-campaign-sql-partner-data.sql（データ連携基盤 キャンペーン - 取引先データ）
* data-platform-campaign-sql-address-data.sql（データ連携基盤 キャンペーン - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
