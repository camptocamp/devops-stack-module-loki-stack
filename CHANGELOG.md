# Changelog

## [10.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v9.0.0...v10.0.0) (2024-10-09)


### ⚠ BREAKING CHANGES

* point the Argo CD provider to the new repository ([#121](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/121))

### Features

* point the Argo CD provider to the new repository ([#121](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/121)) ([5cd19c8](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/5cd19c806151e44e52e95b0813c09df62e2c2111))

## [9.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v8.2.0...v9.0.0) (2024-08-14)


### ⚠ BREAKING CHANGES

* **sks:** remove the cluster_id variable

### Features

* **sks:** remove the cluster_id variable ([62f869e](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/62f869e29b4ca31d1a56ad8c164b0095efe33e28))


### Bug Fixes

* remove the working_directory attribute in the compactor config ([0638108](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/0638108b870fbf85b5b52eff4eeef229eb7a32c8))

## [8.2.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v8.1.0...v8.2.0) (2024-07-15)


### Features

* **chart:** minor update of dependencies on loki-microservice chart ([778a453](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/778a453431c8c4ba9177e3afe30fb0b24bb11918))

## [8.1.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v8.0.0...v8.1.0) (2024-05-17)


### Features

* **grafana-event-handler:** add tenant id for event handler ([#114](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/114)) ([985f8b4](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/985f8b4caf022cdfe734a8d0c5623fd346af704b))

## [8.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v7.2.0...v8.0.0) (2024-04-23)


### ⚠ BREAKING CHANGES

* **eks:** add option to create IAM role for the metrics storage
  * This is a breaking change because the attributes of the `logs_storage` variable has changed. Please check the README.adoc to see the differences.

### Features

* **eks:** add option to create IAM role for the metrics storage ([b274598](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b2745987604970577a5eadfbf19777267a8b725e))

## [7.2.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v7.1.0...v7.2.0) (2024-04-16)


### Features

* add variable to set resources with default values ([b736ecb](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b736ecb94eea7f9338da0309d2e1e895d74e6cba))
* enable caching for index writes ([5fc2b2c](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/5fc2b2c6956e040d5900a263bddcc14f81fa8d09))

## [7.1.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v7.0.1...v7.1.0) (2024-03-13)


### Features

* **grafana-eventhandler:** add affinity parameter to the Helm template ([#98](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/98)) ([776c5db](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/776c5dbd88ae66f87640cf248fe6c1966d52fcc9))

## [7.0.1](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v7.0.0...v7.0.1) (2024-01-22)


### Bug Fixes

* **aks:** add dependencies to fix reading of storage account ([#107](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/107)) ([5500537](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/5500537db6462e58837dd3bf32b143f6b94ff207))

## [7.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v6.0.0...v7.0.0) (2024-01-18)


### ⚠ BREAKING CHANGES

* hardcode the release name to remove the destination cluster
* remove the ArgoCD namespace variable
* remove the namespace variable

### Bug Fixes

* **aks:** improve condition on variable validation and reword message ([4a55c81](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/4a55c8195f57a1a20c60fba91eb9a2c6509ff588))
* **aks:** remove image tag because chart has been upgraded ([31e74f7](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/31e74f73d57a28c018a2d10cbb0b2b14d24d9655))
* hardcode the release name to remove the destination cluster ([61f2ea9](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/61f2ea92bed15d01f18267150e3612fa0bc68e60))
* remove the ArgoCD namespace variable ([47b8551](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/47b8551cb89e33764ae5765d2c6ff5f7e98e7d2c))
* remove the namespace variable ([cad5e08](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/cad5e08f657c901df3170b2bf591c700edb79403))

## [6.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v5.2.0...v6.0.0) (2023-11-10)


### ⚠ BREAKING CHANGES

* **filebeat:** remove filebeat since it is no longer used

### Features

* **filebeat:** remove filebeat since it is no longer used ([4ebb3b1](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/4ebb3b12668aac33af74a168b18951306e9fed02))


### Bug Fixes

* change Traefik CRD group to the one introduced in v23 of Traefik ([c1728dc](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/c1728dc1a2a64073f558cae4dad07bd343558440))

## [5.2.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v5.1.0...v5.2.0) (2023-11-03)


### Features

* **chart:** minor update of dependencies on loki-microservice chart ([#89](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/89)) ([d9bb5f3](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/d9bb5f3cf3659c8b5b586cb2bea259d62490912b))

## [5.1.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v5.0.0...v5.1.0) (2023-10-19)


### Features

* add standard variables and variable to add labels to Argo CD app ([9e2ddb8](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/9e2ddb85e345f9b7f8fddcfe8e1e5b25c7f74e1c))
* add variables to set AppProject and destination cluster ([43632fc](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/43632fc11d4e3648004c4fa68d1579981d948691))

## [5.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v4.0.2...v5.0.0) (2023-09-08)


### ⚠ BREAKING CHANGES

* **loki-stack:** deprecate and remove the loki-stack chart ([#95](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/95))

The variable `distributed_mode` is no longer needed.

**For existing clusters that already use Loki in distributed mode, you just need to remove the line `distributed_mode = true` and run a `terraform apply`. Terrafom should say that no changes need to be applied.**

### Features

* **loki-stack:** deprecate and remove the loki-stack chart ([#95](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/95)) ([fd4a0f4](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/fd4a0f44a30b8b4b60e96757fc2a37e5d288931f))

## [4.0.2](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v4.0.1...v4.0.2) (2023-08-09)


### Bug Fixes

* readd support to deactivate auto-sync which was broken by [#75](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/75) ([b059201](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b0592015f053a3aec60b0c745f462eb4f4bdc659))

## [4.0.1](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v4.0.0...v4.0.1) (2023-07-19)


### Bug Fixes

* use more generic tolerations for promtail ([#90](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/90)) ([e48c76e](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/e48c76ec756de3682dc3bfdb35f439ff0ca8da11))

## [4.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v3.0.1...v4.0.0) (2023-07-11)


### ⚠ BREAKING CHANGES

* add support to oboukili/argocd v5 ([#75](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/75))

### Features

* add support to oboukili/argocd v5 ([#75](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/75)) ([d6bcc0c](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/d6bcc0cca2ca696bbd752a0b67589c5b245b0e94))

## [3.0.1](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v3.0.0...v3.0.1) (2023-07-04)


### Documentation

* add missing symlink to SKS docs and link to sidebar ([#68](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/68)) ([4d60340](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/4d60340b65c803b3b217cf208297d9d80425b4f1))

## [3.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.3.0...v3.0.0) (2023-06-28)


### ⚠ BREAKING CHANGES

* standardize variables like other modules

### Features

* add SKS variant with needed configuration to use SOS ([145e08b](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/145e08bd1214ccc3635d04719d3ccd0a29c67ce0))


### Bug Fixes

* activate insecure mode by default for kind ([b4f1441](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b4f1441753ba5af2b5828eca39f9b1cff31e0a5a))
* standardize variables like other modules ([ba86258](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/ba862583ea09272415cd9f5b2896a5e8e1849927))

## [2.3.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.2.0...v2.3.0) (2023-06-09)


### Features

* add var that enables compactor retention ([#62](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/62)) ([88617bd](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/88617bdf6f1710afdfe4447b63bd43ca2babecfb))

## [2.2.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.1.0...v2.2.0) (2023-05-24)


### Features

* configure ingester replication factor ([#59](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/59)) ([8d00917](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/8d00917d7c315d70dd2d1b5852c19f40578e0590))

## [2.1.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.0.2...v2.1.0) (2023-05-10)


### Features

* add var for ingester replicas ([#57](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/57)) ([f8a4b9f](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/f8a4b9f64d4ae97d193d1c841aac215637fa14a8))


### Bug Fixes

* **azure:** storage account key support ([#48](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/48)) ([6aa151b](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/6aa151b1134f02e3630e67b63bd6a886c87b6513))
* **loki-stack:** set static Grafana agent tag ([#54](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/54)) ([2a571f0](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/2a571f030738ed5fedc35feb50c832210921588c))

## [2.0.2](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.0.1...v2.0.2) (2023-04-26)


### Bug Fixes

* grafana agent static tag ([#52](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/52)) ([710ea82](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/710ea823b9446b21f5ec5a19ea59f231cc159164))

## [2.0.1](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v2.0.0...v2.0.1) (2023-04-17)


### Bug Fixes

* **loki-stack:** set Loki datasource isDefault to false ([#49](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/49)) ([b0a8758](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b0a875808a94464f145a6ab940d1d71939119bf1))

## [2.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.1.0...v2.0.0) (2023-04-13)


### ⚠ BREAKING CHANGES

* **azure:** use managed identity to access object storage ([#40](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/40))

### Features

* **azure:** use managed identity to access object storage ([#40](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/40)) ([6e7cfa2](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/6e7cfa20f64f4781c7d44fedf6d7e2d09078e90d))

## [1.1.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0...v1.1.0) (2023-04-07)


### Features

* ship k8s events to Loki ([#44](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/44)) ([1c55c1b](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/1c55c1b7d39cde0ecaaeb0d7df5a576284e1cf62))

## [1.0.0](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.13...v1.0.0) (2023-03-27)


### Miscellaneous Chores

* release v1.0.0 ([#42](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/42)) ([72a80d1](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/72a80d11b0fce13c6acfab76c103888e5c3d733a))

## [1.0.0-alpha.13](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.12...v1.0.0-alpha.13) (2023-03-10)


### Bug Fixes

* **terraform:** add remaining version requirements ([#37](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/37)) ([f794967](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/f794967b6577c4c3481a4bfdf08acf12f25314d4))

## [1.0.0-alpha.12](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.11...v1.0.0-alpha.12) (2023-03-06)


### Features

* **eks:** add Loki microservices to the EKS variant ([#35](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/35)) ([8dc8a9f](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/8dc8a9fb1a30716b4a1e3b927032e5a6a477edf7))

## [1.0.0-alpha.11](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.10...v1.0.0-alpha.11) (2023-02-22)


### Features

* **loki-microservices:** flush ingester chunks on shutdown ([#31](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/31)) ([b48aa69](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b48aa6999b1fce4779f9e4376efd84420ac24cc3))

## [1.0.0-alpha.10](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.9...v1.0.0-alpha.10) (2023-02-22)


### Features

* **Kind:** add Loki microservices ([#32](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/32)) ([6dc0ef9](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/6dc0ef9e1135763446df854380bad1a20d8f6081))

## [1.0.0-alpha.9](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.8...v1.0.0-alpha.9) (2023-02-13)


### Features

* **loki-microservices:** optional filebeat ([#26](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/26)) ([dbb9110](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/dbb911089343c123bbfa6c048e005e3b01ee7868))


### Miscellaneous Chores

* release 1.0.0-alpha.9 ([#29](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/29)) ([b646ad7](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b646ad7c8248a9e12cfa881faaceed0455aa60af))

## [1.0.0-alpha.8](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.7...v1.0.0-alpha.8) (2023-02-13)


### Features

* **loki-microservices:** add frontend ingress ([#25](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/25)) ([b98a4bd](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/b98a4bd07c1b8c483f6ff968d09320e49b324aa8))

## [1.0.0-alpha.7](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.6...v1.0.0-alpha.7) (2023-02-01)


### Bug Fixes

* **ruler:** move value block ([#23](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/23)) ([3ef695f](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/3ef695f49751ea71cb8d6e24fa4b94d3a00a38d5))

## [1.0.0-alpha.6](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.5...v1.0.0-alpha.6) (2023-01-31)


### Features

* **helm:** download all used charts ([#21](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/21)) ([aa015fe](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/aa015fe7f6f1985be986eed22b82095ada65e994))

## [1.0.0-alpha.5](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.4...v1.0.0-alpha.5) (2023-01-30)


### Features

* **Azure:** support Loki microservices setup ([#18](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/18)) ([9e17998](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/9e179988ee61eb15bcad6e5f92012438b779a4b5))

## [1.0.0-alpha.4](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2023-01-30)


### Features

* add variable to configure sync on the application resource ([#17](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/17)) ([1ddf02b](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/1ddf02b9a0f492cc9f66d23567c3cfeebf7546d4))

## [1.0.0-alpha.3](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2022-12-16)


### Code Refactoring

* rename variables same as kube-prometheus-stack ([#15](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/15)) ([dd0f1c6](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/dd0f1c6ae784bb49617ed7644d84aa6036854e0f))

## [1.0.0-alpha.2](https://github.com/camptocamp/devops-stack-module-loki-stack/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2022-12-09)


### Features

* remove bucket creation from inside the module and refactor k3s/kind variant ([#13](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/13)) ([4661e91](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/4661e918d05b1b0c268e5b3b59cce7804962ae64))

## 1.0.0-alpha.1 (2022-11-18)


### ⚠ BREAKING CHANGES

* move Terraform module at repository root
* use var.cluster_info

### Features

* **azure:** add module ([c6f4784](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/c6f47844950f0e150f6912b7557ab9802a3c2a26))


### Bug Fixes

* do not delay Helm values evaluation ([9c50d4d](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/9c50d4dd7bc1bdcfa02fb75ac32f2436e731d463))
* **eks:** fix aws_region name ([5f42fdc](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/5f42fdce037e1aff92024c8e8d52accc991fbe36))
* **eks:** helm values syntax ([#9](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/9)) ([e7a5976](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/e7a59760b5798255c09a6fc0bbd57329aea6e498))
* **eks:** use cluster_name instead of cluster_id ([4c8c093](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/4c8c093bce29242306d4caf1ca12d6c30010e64b))
* README ([5a0d660](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/5a0d660a508101093a1ed771b5bfffbae7551c98))
* var.minio ([1185ce7](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/1185ce7b7181b65296650dcf5564eb11eace9ddb))
* variables.tf changed to symbolic link of upper level ([3dfb278](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/3dfb2789af11c09b4c15eff7f199c83d9cfbc62e))
* **version:** add version symlink in cloud folder ([a144615](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/a1446157fa3a60b921c4e7da2d2bdfb3e1b82656))
* wait for app removel before deleting the project ([f82a246](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/f82a246ba4794b7177f559b35b52c57fb6a06213))


### Code Refactoring

* move Terraform module at repository root ([a779522](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/a779522d9fb50f4abe34dd0bc751240f61b3909f))
* use var.cluster_info ([c581b5c](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/c581b5c3d40f16d8f9e356c731557d30b30fd837))


### Continuous Integration

* add central workflows including release-please ([#11](https://github.com/camptocamp/devops-stack-module-loki-stack/issues/11)) ([1cb7d55](https://github.com/camptocamp/devops-stack-module-loki-stack/commit/1cb7d55c5a8ae86b6f5fc147ec8d2e5aaca2758d))
