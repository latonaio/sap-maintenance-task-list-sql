# sap-maintenance-task-list-sql

sap-maintenance-task-list-sql は、主にエッジアプリケーションにおいて、SAPと連携された保全タスクリストデータを保存するSQLテーブルを作成するためのレポジトリです。    
sap-maintenance-task-list-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。    

## 前提条件  
sap-maintenance-task-list-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。    
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_MAINTENANCETASKLIST_0001/overview     
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-maintenance-task-list-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* sap-maintenance-task-list-sql-header-data.sql（SAP 保全タスクリスト - ヘッダデータ）
* sap-maintenance-task-list-sql-strategy-package-data.sql（SAP 保全タスクリスト - 方針パッケージデータ）
* sap-maintenance-task-list-sql-operation-data.sql（SAP 保全タスクリスト - 作業データ）  
* sap-maintenance-task-list-sql-operation-material-data.sql（SAP 保全タスクリスト - 作業品目データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  