# Airflow Setup - dev

Este repositório contém um setup de desenvolvimento do Airflow usando <a href="https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html">este guia oficial</a>. Além disso, o `docker-compose.yaml` utilizando é o arquivo oficial encontrado <a href="https://airflow.apache.org/docs/apache-airflow/2.9.3/docker-compose.yaml">neste link</a> e a única alteração realizada foi a alteração da variável `AIRFLOW__CORE__LOAD_EXAMPLES` de `'true'` para `'false'`.


Para subir a instância, execute os comandos a seguir

1. Exportar o airflow uid como variável de ambiente - se você estiver usando o Gitpod com este repositório, pule esta etapa, pois ela já foi exportada no `.gitpod.yml`. Caso contrário, execute o seguinte comando:

    ```
    echo 'export AIRFLOW_UID=50000'>>~/.bashrc
    source ~/.bashrc
    ```

2. Clonar o repositório e entrar no diretório
    ```
    git clone https://github.com/KattsonBastos/airflow-dev-setup.git

    cd airflow-dev-setup
    ```

3. Subir o Airflow:
    ```
    bash setup.sh up
    ```

4. Caso queira remover, escolha um dos comandos a seguir:
    ```
    ## apenas excluir os containers
    bash setup.sh down

    ## remover containers, volumes e imagens
    bash setup.sh rm
    ```