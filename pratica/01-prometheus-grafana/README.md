# ![](https://pics.freeicons.io/uploads/icons/png/8135670941548141941-32.png) EC2 - Prometheus e Grafana ![](https://pics.freeicons.io/uploads/icons/png/6813193821551942286-32.png)

**Objetivo**: Criar um ambiente de monitoração na AWS com base em Prometheus e Grafana em instâncias EC2.

Design da arquitetura:
![](../../imagens/ec2-pratica-prometheus-grafana-arq.png)

Criar 2 instâncias EC2 com Terraform onde:

- 1 instância terá o Prometheus instalado para capturar as métricas de monitoração e o Grafana para criação do Dashboard;
- 1 instância terá um Node Exporter instalado para exportar as métricas para o Prometheus.

## Procedimento

Executar os arquivos Terraform no repo local com os seguintes comandos:

```go
terraform init

terraform plan

terraform apply
```

A configuração dos Security Groups e Instâncias criadas é a seguinte:

![](../../imagens/ec2-pratica-prometheus-grafana-sg.png)

![](../../imagens/ec2-pratica-prometheus-grafana-instance.png)
