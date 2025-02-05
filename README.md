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

- GCloud-Runは
  - GAから参照して、`ghcr`にアクセスする
    - `deploy-gcloud-run.yaml`を修正する必要がある。
    - 
  - Docker hubからあくせすするひつようがある
    - https://cloud.google.com/artifact-registry/docs/repositories/create-dockerhub-remote-repository?hl=ja
    - https://zenn.dev/ww24/articles/7891e95f8bfbe4#gar-%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%88%E3%83%AA%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%81%AE%E4%BD%9C%E6%88%90
    - https://zenn.dev/harusame0616/articles/1caea25fbf60ab
    - [GCP 公式　Cloud Run へのコンテナ イメージのデプロイ](https://cloud.google.com/run/docs/deploying?hl=ja)
    - [GCPからDockerhubを操作する](https://cloud.google.com/build/docs/interacting-with-dockerhub-images?hl=ja)
    - [Artifact Registry の料金](https://cloud.google.com/artifact-registry/pricing?hl=ja)