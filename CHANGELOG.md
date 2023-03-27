# Changelog

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
