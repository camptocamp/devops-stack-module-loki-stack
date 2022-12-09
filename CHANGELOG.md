# Changelog

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
