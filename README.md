# Github Actionを触ってみる

やること
- Github ActionからGithub RegistryにPushする
- Github ActionからGCPのCloud Runにデプロイする
  - 設定しておくこと
  
    ```
    env:
        GCP_PROJECT_ID: プロジェクトの名前
        GCP_REGION: リージョン
        IMAGE_NAME: gcr.io/プロジェクトの名前/イメージの名前
    ```

    Github Dashboardの方からは、

    ```
    ${{ secrets.GCP_SA_KEY }}
    ```
    上記を設定をしておく
