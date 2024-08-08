[33mcommit 3156ffbdfe82828679b40f92937daf95e8a036a3[m[33m ([m[1;36mHEAD -> [m[1;32malloy[m[33m, [m[1;31morigin/alloy[m[33m)[m
Author: omohammed95 <osman.mohammed@camptocamp.com>
Date:   Tue Oct 29 16:18:22 2024 +0100

    feat: add alloy config on locals

 charts/loki-microservice/Chart.lock             |   6 [32m+++[m[31m---[m
 charts/loki-microservice/Chart.yaml             |   2 [32m+[m[31m-[m
 charts/loki-microservice/charts/alloy-0.7.0.tgz | Bin [31m21762[m -> [32m0[m bytes
 charts/loki-microservice/charts/alloy-0.9.2.tgz | Bin [31m0[m -> [32m22216[m bytes
 locals.tf                                       |  35 [32m+++++++++++++++++++++[m[31m--------------[m
 variables.tf                                    |  11 [31m-----------[m
 6 files changed, 25 insertions(+), 29 deletions(-)

[33mcommit 553057b6992c4f8876eb08ff4a52c2885ce1ea5a[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Fri Sep 20 14:57:18 2024 +0200

    chore(alloy): remove event_handler
    
    add resource and limits settings

 charts/loki-microservice/templates/event_handler.yaml | 126 [31m------------------------------------------------------------------[m
 locals.tf                                             |  19 [32m+++[m[31m-------[m
 variables.tf                                          |  11 [32m++++++[m
 3 files changed, 16 insertions(+), 140 deletions(-)

[33mcommit 9894c99e214d821a327d4015008a7c4d4029e4ea[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Fri Sep 20 14:23:46 2024 +0200

    chore(alloy): bump alloy to 0.7.0

 charts/loki-microservice/Chart.lock             |   6 [32m+++[m[31m---[m
 charts/loki-microservice/Chart.yaml             |   2 [32m+[m[31m-[m
 charts/loki-microservice/charts/alloy-0.6.0.tgz | Bin [31m20456[m -> [32m0[m bytes
 charts/loki-microservice/charts/alloy-0.7.0.tgz | Bin [31m0[m -> [32m21762[m bytes
 4 files changed, 4 insertions(+), 4 deletions(-)

[33mcommit e255882e0df206974588e9c798b29cc03de0e786[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Thu Sep 12 11:38:21 2024 +0200

    test(event): desactivate event

 locals.tf | 8 [32m+[m[31m-------[m
 1 file changed, 1 insertion(+), 7 deletions(-)

[33mcommit f0f0b746ae3f736dae9fa4bc670ec7e1a2ea21f4[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Tue Aug 13 09:54:45 2024 +0200

    test cm

 locals.tf | 30 [32m+++++++++[m[31m---------------------[m
 1 file changed, 9 insertions(+), 21 deletions(-)

[33mcommit 39e56d659430ecc546b1584bda32396c1fb16527[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Tue Aug 13 09:51:27 2024 +0200

    add configmap

 locals.tf | 13 [32m+++++++++++++[m
 1 file changed, 13 insertions(+)

[33mcommit 558e9518604e424b5c0dd4204c25bb095bfb2a78[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Tue Aug 13 09:48:29 2024 +0200

    Revert "revert local.tf"
    
    This reverts commit e1e3a1b0de559470a96ec18192123840b1183595.

 locals.tf | 26 [32m++++++++++++++++++++++++++[m
 1 file changed, 26 insertions(+)

[33mcommit 281d7e2fda6b2c9c5b0e78a2980f159853a1290b[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Tue Aug 13 09:42:35 2024 +0200

    revert local.tf

 locals.tf | 26 [31m--------------------------[m
 1 file changed, 26 deletions(-)

[33mcommit 6916104384c2c77c607e8162598f5972a079afb8[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Thu Aug 8 17:18:45 2024 +0200

    feat(alloy): set alloy

 charts/loki-microservice/Chart.lock             |   7 [32m+++++[m[31m--[m
 charts/loki-microservice/Chart.yaml             |   3 [32m+++[m
 charts/loki-microservice/charts/alloy-0.6.0.tgz | Bin [31m0[m -> [32m20456[m bytes
 locals.tf                                       |  26 [32m++++++++++++++++++++++++++[m
 4 files changed, 34 insertions(+), 2 deletions(-)

[33mcommit 25a16f32de5fb0cc9b11586bfb219323a30da818[m[33m ([m[1;33mtag: v10.0.0[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;32mmain[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Oct 9 16:02:53 2024 +0200

    chore: release 10.0.0 (#122)
    
    * chore: release 10.0.0
    
    * docs: update CHANGELOG.md
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
    Co-authored-by: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 CHANGELOG.md     | 79 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 README.adoc      |  6 [32m+++[m[31m---[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 variables.tf     |  2 [32m+[m[31m-[m
 version.txt      |  2 [32m+[m[31m-[m
 8 files changed, 92 insertions(+), 13 deletions(-)

[33mcommit 5cd19c806151e44e52e95b0813c09df62e2c2111[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Wed Oct 9 15:12:39 2024 +0200

    feat!: point the Argo CD provider to the new repository (#121)
    
    * feat!: point the Argo CD provider to the new repository
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc      | 22 [32m+++++++++++[m[31m-----------[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 terraform.tf     |  4 [32m++[m[31m--[m
 6 files changed, 21 insertions(+), 21 deletions(-)

[33mcommit b1103f9dff9fd7b3d4ffffeb8173845412c09a17[m[33m ([m[1;33mtag: v9.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Aug 14 15:56:21 2024 +0200

    chore: release 9.0.0 (#120)
    
    * chore: release 9.0.0
    
    * docs: update CHANGELOG.md
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
    Co-authored-by: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 CHANGELOG.md     | 16 [32m++++++++++++++++[m
 README.adoc      |  4 [32m++[m[31m--[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 variables.tf     |  2 [32m+[m[31m-[m
 version.txt      |  2 [32m+[m[31m-[m
 8 files changed, 28 insertions(+), 12 deletions(-)

[33mcommit 9bc3c2636e94ef6c7a1680140f022faf30246202[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Wed Aug 14 15:53:01 2024 +0200

    docs: remove old charts from the README.adoc (#117)
    
    * docs: remove old charts from the README.adoc
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc | 6 [32m++[m[31m----[m
 1 file changed, 2 insertions(+), 4 deletions(-)

[33mcommit 3bd6c286c6306fb252865c96084ce8ebcd34647a[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Wed Aug 7 10:02:25 2024 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit 0638108b870fbf85b5b52eff4eeef229eb7a32c8[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Aug 7 12:01:47 2024 +0200

    fix: remove the working_directory attribute in the compactor config
    
    This [flag](https://github.com/grafana/helm-charts/commit/824e3da82e5a9aeb09da211f71f86a98f89e64b2#diff-c09523f8c89a2fdb980fa9bb57eebcbb45a5950391a6bb8d44b549ea184388f6) was hardcoded before and was removed on the version 0.79.x of the chart. As a consequence, it seems that the attribute `compactor.working_directory' was taking its place and breaking our deployments. As a fix, I've decided to revert to the default configuration which uses the `/var/loki` directory (which is mounted as a persistent volume created automatically, as defined by our values).

 aks/locals.tf  | 3 [32m+[m[31m--[m
 eks/locals.tf  | 3 [32m+[m[31m--[m
 kind/locals.tf | 3 [32m+[m[31m--[m
 sks/locals.tf  | 3 [32m+[m[31m--[m
 4 files changed, 4 insertions(+), 8 deletions(-)

[33mcommit d32518940832486967ba7bed5453c5d669dbd059[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Tue Jul 16 12:05:53 2024 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 12 [32m++++++[m[31m------[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  | 16 [32m++[m[31m--------------[m
 5 files changed, 14 insertions(+), 26 deletions(-)

[33mcommit 62f869e29b4ca31d1a56ad8c164b0095efe33e28[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Tue Jul 16 13:57:06 2024 +0200

    feat!: remove the cluster_id variable
    
    When creating an SKS cluster, Exoscale used to provision a cluster domain value of `<CLUSTER_ID>.cluster.local`. This is the legacy value for SKS cluster domain.
    
    They recently transitioned to provisioning SKS cluster with the default cluster domain value of `cluster.local`.
    
    Consequently, we need to remove the adaptations on our modules that were there to support this bizarre, and now legacy, behavior.

 sks/extra-variables.tf | 5 [31m-----[m
 sks/locals.tf          | 3 [31m---[m
 2 files changed, 8 deletions(-)

[33mcommit 8a0a4c2f2dd0aef65035cb6a2073a07559dff546[m[33m ([m[1;33mtag: v8.2.0[m[33m, [m[1;32mtemp2[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Jul 15 13:59:42 2024 +0000

    chore: release 8.2.0

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 778a453431c8c4ba9177e3afe30fb0b24bb11918[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Jul 15 07:01:56 2024 +0000

    feat(chart): minor update of dependencies on loki-microservice chart

 README.adoc                                                 |   4 [32m++[m[31m--[m
 charts/loki-microservice/Chart.lock                         |   8 [32m++++[m[31m----[m
 charts/loki-microservice/Chart.yaml                         |   4 [32m++[m[31m--[m
 charts/loki-microservice/charts/loki-distributed-0.76.1.tgz | Bin [31m44044[m -> [32m0[m bytes
 charts/loki-microservice/charts/loki-distributed-0.79.1.tgz | Bin [31m0[m -> [32m45003[m bytes
 charts/loki-microservice/charts/promtail-6.15.3.tgz         | Bin [31m17258[m -> [32m0[m bytes
 charts/loki-microservice/charts/promtail-6.16.3.tgz         | Bin [31m0[m -> [32m17347[m bytes
 7 files changed, 8 insertions(+), 8 deletions(-)

[33mcommit 94a0f64b3de5b3d5ea3574eea96d97f71aeb6c47[m[33m ([m[1;33mtag: v8.1.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Thu May 23 13:25:34 2024 +0200

    chore: release 8.1.0 (#115)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 985f8b4caf022cdfe734a8d0c5623fd346af704b[m
Author: Xavier Rakotomamonjy <xavier.rakotomamonjy@camptocamp.com>
Date:   Fri May 17 17:19:50 2024 +0200

    feat(grafana-event-handler): add tenant id for event handler (#114)
    
    * feat(charts): add tenant id for event handler
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: Xaving <Xaving@users.noreply.github.com>

 README.adoc                                           | 2 [32m+[m[31m-[m
 charts/loki-microservice/templates/event_handler.yaml | 3 [32m+++[m
 2 files changed, 4 insertions(+), 1 deletion(-)

[33mcommit a1750e0fba1534eac4bde9613d9205a83d690da1[m[33m ([m[1;33mtag: v8.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Tue Apr 23 11:50:51 2024 +0200

    chore: release 8.0.0 (#113)
    
    * chore: release 8.0.0
    
    * docs: update CHANGELOG.md
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * docs: update CHANGELOG.md
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
    Co-authored-by: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 CHANGELOG.md     | 12 [32m++++++++++++[m
 README.adoc      |  4 [32m++[m[31m--[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 variables.tf     |  2 [32m+[m[31m-[m
 version.txt      |  2 [32m+[m[31m-[m
 8 files changed, 24 insertions(+), 12 deletions(-)

[33mcommit 9ca0950d5fb9a9062f0ad3d5bf2db8b83c35848f[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Fri Apr 19 07:54:55 2024 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 10 [32m+++++[m[31m-----[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  | 62 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--------[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 5 files changed, 65 insertions(+), 19 deletions(-)

[33mcommit b2745987604970577a5eadfbf19777267a8b725e[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Tue Apr 16 15:36:48 2024 +0200

    feat(eks)!: add option to create IAM role for the metrics storage
    
    This commit solves ISDEVOPS-279 and ISDEVOPS-283 for the EKS variants.

 aks/extra-variables.tf |  2 [32m+[m[31m-[m
 eks/extra-variables.tf | 18 [32m++++++++++++++[m[31m----[m
 eks/locals.tf          |  6 [32m++++[m[31m--[m
 eks/main.tf            | 48 [32m++++++++++++++++++++++++++++++++++++++++++++++++[m
 4 files changed, 67 insertions(+), 7 deletions(-)

[33mcommit 326805b2e3d8d2b39de4ba1f4790b1437018819c[m[33m ([m[1;33mtag: v7.2.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Tue Apr 16 17:10:35 2024 +0200

    chore: release 7.2.0 (#111)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 8 [32m++++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 10 insertions(+), 2 deletions(-)

[33mcommit 7446d24ba311f3a2231853fa8e917aaef89742c6[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Wed Apr 3 10:02:48 2024 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 327 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 aks/README.adoc  | 323 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 eks/README.adoc  | 323 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 kind/README.adoc | 323 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 sks/README.adoc  | 323 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 5 files changed, 1607 insertions(+), 12 deletions(-)

[33mcommit 5fc2b2c6956e040d5900a263bddcc14f81fa8d09[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Apr 3 11:42:09 2024 +0200

    feat: enable caching for index writes

 locals.tf    |  7 [32m+++++++[m
 variables.tf | 11 [32m+++++++++++[m
 2 files changed, 18 insertions(+)

[33mcommit b736ecb94eea7f9338da0309d2e1e895d74e6cba[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Apr 3 11:41:37 2024 +0200

    feat: add variable to set resources with default values
    
    Having default values is good practice to prevent that our components could eventually starve other workloads on the cluster. However, these should probably be adapted in production clusters and are only a safeguard in case someone forgets to set them.

 aks/main.tf  |   1 [32m+[m
 eks/main.tf  |   1 [32m+[m
 kind/main.tf |   1 [32m+[m
 locals.tf    |  45 [32m++++++++++++++++++++++++++++++++[m[31m--[m
 sks/main.tf  |   1 [32m+[m
 variables.tf | 144 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 6 files changed, 191 insertions(+), 2 deletions(-)

[33mcommit 19a0098bdcade6a7d0c0462d26ed48b45cfbe016[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Apr 3 11:38:25 2024 +0200

    refactor: add a few comments and separate components in values

 locals.tf | 6 [32m++++++[m
 1 file changed, 6 insertions(+)

[33mcommit 430f5725d9a9617957e7d09aba280ad6f226721f[m[33m ([m[1;33mtag: v7.1.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Mar 13 16:27:50 2024 +0100

    chore: release 7.1.0 (#109)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 776c5dbd88ae66f87640cf248fe6c1966d52fcc9[m
Author: Osman <53604473+omohammed95@users.noreply.github.com>
Date:   Wed Mar 13 16:25:33 2024 +0100

    feat(grafana-eventhandler): add affinity parameter to the Helm template (#98)
    
    * feat(loki-stack): add affinity parameter to enventHandler
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: omohammed95 <omohammed95@users.noreply.github.com>

 README.adoc                                           | 12 [32m++++++[m[31m------[m
 aks/README.adoc                                       |  4 [32m++[m[31m--[m
 charts/loki-microservice/templates/event_handler.yaml |  2 [32m++[m
 eks/README.adoc                                       |  4 [32m++[m[31m--[m
 kind/README.adoc                                      |  4 [32m++[m[31m--[m
 locals.tf                                             |  1 [32m+[m
 sks/README.adoc                                       |  4 [32m++[m[31m--[m
 7 files changed, 17 insertions(+), 14 deletions(-)

[33mcommit 40efe526f2230b8e2eea5e4f05788ffd14207bdb[m[33m ([m[1;33mtag: v7.0.1[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Jan 22 16:09:10 2024 +0100

    chore: release 7.0.1 (#108)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 5500537db6462e58837dd3bf32b143f6b94ff207[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Mon Jan 22 16:01:15 2024 +0100

    fix(aks): add dependencies to fix reading of storage account (#107)
    
    * fix(aks): add dependencies to fix reading of storage account
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc      |  8 [32m++++[m[31m----[m
 aks/README.adoc  |  9 [32m+++++++[m[31m--[m
 aks/main.tf      | 14 [32m++++++++++++++[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 6 files changed, 31 insertions(+), 12 deletions(-)

[33mcommit 949479a3fa031ac7b5e6dac3867780bdf3e74b66[m[33m ([m[1;33mtag: v7.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Thu Jan 18 18:07:17 2024 +0100

    chore: release 7.0.0 (#106)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 17 [32m+++++++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 19 insertions(+), 2 deletions(-)

[33mcommit 633b3a1c1d54213094857f56f842ef84169ebf6d[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Thu Jan 18 16:18:36 2024 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 40 [32m++++++[m[31m----------------------------------[m
 aks/README.adoc  | 40 [32m++++++[m[31m----------------------------------[m
 eks/README.adoc  | 32 [32m++[m[31m------------------------------[m
 kind/README.adoc | 32 [32m++[m[31m------------------------------[m
 sks/README.adoc  | 32 [32m++[m[31m------------------------------[m
 5 files changed, 18 insertions(+), 158 deletions(-)

[33mcommit 7ddaefb7c51841233878b29ccc393c99b8346e91[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jan 18 17:14:02 2024 +0100

    refactor(aks): rename Terraform resources similar to other modules

 aks/main.tf | 10 [32m+++++[m[31m-----[m
 1 file changed, 5 insertions(+), 5 deletions(-)

[33mcommit 31e74f73d57a28c018a2d10cbb0b2b14d24d9655[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jan 18 17:13:22 2024 +0100

    fix(aks): remove image tag because chart has been upgraded

 aks/locals.tf | 5 [31m-----[m
 1 file changed, 5 deletions(-)

[33mcommit 61f2ea92bed15d01f18267150e3612fa0bc68e60[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jan 18 17:12:52 2024 +0100

    fix!: hardcode the release name to remove the destination cluster
    
    I found out that Argo CD passes the name of the application as a value to set the Helm chart. This means that all the templating that used `{ $.Release.Name }` would resolve to the name given to Argo CD application.
    
    In a multicluster deployment, using a single Argo CD, the names of the applications must be different. We solved that by appending the cluster name to the default application name when deploying on different clusters than `in-cluster`. However, this resulted in multiple problems for deployments that depended on the name of the application being static, so this solves that.
    
    This is a breaking change because sometimes this requires an application to be deleted and recreated.

 main.tf | 3 [32m++[m[31m-[m
 1 file changed, 2 insertions(+), 1 deletion(-)

[33mcommit 47b8551cb89e33764ae5765d2c6ff5f7e98e7d2c[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jan 18 17:12:17 2024 +0100

    fix!: remove the ArgoCD namespace variable
    
    Since we are hardcoding the namespace variable on all modules, the variable to set the ArgoCD namespace will no longer be needed as well.

 aks/main.tf  | 1 [31m-[m
 eks/main.tf  | 1 [31m-[m
 kind/main.tf | 1 [31m-[m
 main.tf      | 7 [32m++[m[31m-----[m
 sks/main.tf  | 1 [31m-[m
 variables.tf | 6 [31m------[m
 6 files changed, 2 insertions(+), 15 deletions(-)

[33mcommit cad5e08f657c901df3170b2bf591c700edb79403[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jan 18 17:08:37 2024 +0100

    fix!: remove the namespace variable
    
    We found out that on multiple modules we were referencing resources from other modules using their default namespaces and this was hardcoded. In case someone decided to change the namespace of deployment of a certain application, this could break the way modules work with each other.
    
    We've decided that in order to avoid undefined behaviors caused by overloading this variable, it would be best to remove it entirely.

 aks/main.tf  | 3 [32m+[m[31m--[m
 eks/main.tf  | 1 [31m-[m
 kind/main.tf | 1 [31m-[m
 locals.tf    | 8 [32m++++[m[31m----[m
 main.tf      | 4 [32m++[m[31m--[m
 sks/main.tf  | 1 [31m-[m
 variables.tf | 6 [31m------[m
 7 files changed, 7 insertions(+), 17 deletions(-)

[33mcommit 4a55c8195f57a1a20c60fba91eb9a2c6509ff588[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Dec 18 11:51:36 2023 +0100

    fix(aks): improve condition on variable validation and reword message

 aks/extra-variables.tf | 6 [32m+++[m[31m---[m
 1 file changed, 3 insertions(+), 3 deletions(-)

[33mcommit 449591ac5bc5bf0be6e4de26ec074f957e746a3e[m[33m ([m[1;33mtag: v6.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Nov 10 10:37:13 2023 +0100

    chore: release 6.0.0 (#102)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 16 [32m++++++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 18 insertions(+), 2 deletions(-)

[33mcommit 9ecd7be73cd345632c06097a9bdf740ae4cd425d[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Fri Nov 10 09:34:20 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc | 4 [32m++[m[31m--[m
 1 file changed, 2 insertions(+), 2 deletions(-)

[33mcommit 1322910a5f9f1cdefa5516efae2af890d4108e52[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Mon Nov 6 13:45:32 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 18 [32m++[m[31m----------------[m
 aks/README.adoc  | 18 [32m++[m[31m----------------[m
 eks/README.adoc  | 18 [32m++[m[31m----------------[m
 kind/README.adoc | 18 [32m++[m[31m----------------[m
 sks/README.adoc  | 18 [32m++[m[31m----------------[m
 5 files changed, 10 insertions(+), 80 deletions(-)

[33mcommit 4ebb3b12668aac33af74a168b18951306e9fed02[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Nov 3 13:58:14 2023 +0100

    feat(filebeat)!: remove filebeat since it is no longer used

 aks/main.tf                                         |   5 [32m++[m[31m---[m
 charts/loki-microservice/Chart.lock                 |   7 [32m++[m[31m-----[m
 charts/loki-microservice/Chart.yaml                 |   4 [31m----[m
 charts/loki-microservice/charts/filebeat-7.17.3.tgz | Bin [31m12400[m -> [32m0[m bytes
 eks/main.tf                                         |   5 [32m++[m[31m---[m
 kind/main.tf                                        |   5 [32m++[m[31m---[m
 locals.tf                                           |  11 [31m-----------[m
 sks/main.tf                                         |   5 [32m++[m[31m---[m
 variables.tf                                        |   6 [31m------[m
 9 files changed, 10 insertions(+), 38 deletions(-)

[33mcommit c1728dc1a2a64073f558cae4dad07bd343558440[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Nov 3 13:57:06 2023 +0100

    fix: change Traefik CRD group to the one introduced in v23 of Traefik

 charts/loki-microservice/templates/ingressRoute.yaml | 6 [32m+++[m[31m---[m
 1 file changed, 3 insertions(+), 3 deletions(-)

[33mcommit b401e069a6d3591d6ee5b93a665934294ac2ae14[m[33m ([m[1;33mtag: v5.2.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Nov 3 13:51:44 2023 +0100

    chore: release 5.2.0 (#100)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit d9bb5f3cf3659c8b5b586cb2bea259d62490912b[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Nov 3 13:50:45 2023 +0100

    feat(chart): minor update of dependencies on loki-microservice chart (#89)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 README.adoc                                                  |   4 [32m++[m[31m--[m
 charts/loki-microservice/Chart.lock                          |   8 [32m++++[m[31m----[m
 charts/loki-microservice/Chart.yaml                          |  27 [32m+++++++++++++[m[31m--------------[m
 charts/loki-microservice/charts/loki-distributed-0.69.10.tgz | Bin [31m40980[m -> [32m0[m bytes
 charts/loki-microservice/charts/loki-distributed-0.76.1.tgz  | Bin [31m0[m -> [32m44044[m bytes
 charts/loki-microservice/charts/promtail-6.15.3.tgz          | Bin [31m0[m -> [32m17258[m bytes
 charts/loki-microservice/charts/promtail-6.2.3.tgz           | Bin [31m12729[m -> [32m0[m bytes
 7 files changed, 19 insertions(+), 20 deletions(-)

[33mcommit de468ee82c13521c7d743b84249476178119dba7[m[33m ([m[1;33mtag: v5.1.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Thu Oct 19 17:10:26 2023 +0200

    chore: release 5.1.0 (#99)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 8 [32m++++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 10 insertions(+), 2 deletions(-)

[33mcommit 871665ee9c854f197802e9087a6a6347dde182e6[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Fri Sep 15 12:55:36 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 50 [32m++++++++++++++++++++++++++++++++++++++++++++++[m[31m----[m
 aks/README.adoc  | 46 [32m++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 eks/README.adoc  | 46 [32m++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 kind/README.adoc | 46 [32m++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 sks/README.adoc  | 46 [32m++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 5 files changed, 222 insertions(+), 12 deletions(-)

[33mcommit 9e2ddb85e345f9b7f8fddcfe8e1e5b25c7f74e1c[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Sep 15 14:19:40 2023 +0200

    feat: add standard variables and variable to add labels to Argo CD app

 aks/main.tf  | 1 [32m+[m
 eks/main.tf  | 1 [32m+[m
 kind/main.tf | 1 [32m+[m
 main.tf      | 4 [32m++++[m
 sks/main.tf  | 1 [32m+[m
 variables.tf | 6 [32m++++++[m
 6 files changed, 14 insertions(+)

[33mcommit 43632fc11d4e3648004c4fa68d1579981d948691[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Sep 15 09:48:11 2023 +0200

    feat: add variables to set AppProject and destination cluster

 aks/main.tf  | 12 [32m+++++++[m[31m-----[m
 eks/main.tf  | 12 [32m+++++++[m[31m-----[m
 kind/main.tf | 12 [32m+++++++[m[31m-----[m
 main.tf      | 14 [32m++++++++[m[31m------[m
 sks/main.tf  | 12 [32m+++++++[m[31m-----[m
 variables.tf | 12 [32m++++++++++++[m
 6 files changed, 48 insertions(+), 26 deletions(-)

[33mcommit c0ade6db24e2cfffd2d89839b22e8d43843eb163[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Sep 15 09:47:07 2023 +0200

    docs: remove deprecated variable from the examples

 sks/README.adoc | 4 [31m----[m
 1 file changed, 4 deletions(-)

[33mcommit c9fad9a0962776df516cad625c37dd252f0fed46[m[33m ([m[1;33mtag: v5.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Sep 8 14:44:59 2023 +0200

    chore: release 5.0.0 (#96)
    
    * chore: release 5.0.0
    
    * docs: update CHANGELOG.md
    
    ---------
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
    Co-authored-by: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>

 CHANGELOG.md | 15 [32m+++++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 17 insertions(+), 2 deletions(-)

[33mcommit fd4a0f44a30b8b4b60e96757fc2a37e5d288931f[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Fri Sep 8 14:42:49 2023 +0200

    feat(loki-stack)!: deprecate and remove the loki-stack chart (#95)
    
    * feat(loki-stack)!: deprecate and remove the loki-stack chart
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc                                    |  22 [32m+[m[31m----[m
 aks/README.adoc                                |  22 [32m+[m[31m----[m
 aks/locals.tf                                  |  98 [32m++++++++[m[31m--------------[m
 aks/main.tf                                    |   7 [32m+[m[31m-[m
 charts/loki-stack/Chart.lock                   |   6 [31m--[m
 charts/loki-stack/Chart.yaml                   |  11 [31m---[m
 charts/loki-stack/charts/loki-stack-2.8.9.tgz  | Bin [31m129849[m -> [32m0[m bytes
 charts/loki-stack/templates/event_handler.yaml | 121 [31m---------------------------[m
 charts/loki-stack/templates/podmonitor.yaml    |  17 [31m----[m
 charts/loki-stack/values.yaml                  |   1 [31m-[m
 eks/README.adoc                                |  22 [32m+[m[31m----[m
 eks/locals.tf                                  |  90 [32m+++++++[m[31m-------------[m
 eks/main.tf                                    |   7 [32m+[m[31m-[m
 kind/README.adoc                               |  22 [32m+[m[31m----[m
 kind/locals.tf                                 |  88 [32m+++++++[m[31m-------------[m
 kind/main.tf                                   |   7 [32m+[m[31m-[m
 locals.tf                                      | 325 [32m++++++++++++++++++++++++++++++++[m[31m-----------------------------------------[m
 main.tf                                        |   2 [32m+[m[31m-[m
 sks/README.adoc                                |  22 [32m+[m[31m----[m
 sks/locals.tf                                  |  87 [32m+++++++[m[31m-------------[m
 sks/main.tf                                    |   6 [32m+[m[31m-[m
 variables.tf                                   |   8 [32m+[m[31m-[m
 22 files changed, 298 insertions(+), 693 deletions(-)

[33mcommit 4a77cecf427fe7a2402227aff630a5a151d7a406[m[33m ([m[1;33mtag: v4.0.2[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Aug 9 13:09:55 2023 +0200

    chore: release 4.0.2 (#94)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit e53e3f0480298bee706d6e3dd6cb9073ad2ea519[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Thu Jul 20 06:15:54 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 10 [32m+++++[m[31m-----[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 sks/README.adoc  |  4 [32m++[m[31m--[m
 5 files changed, 13 insertions(+), 13 deletions(-)

[33mcommit dff96356110a677ebcb278f19c08d656d85d0e73[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jul 20 08:13:52 2023 +0200

    ci: fix typo on description

 .github/workflows/chart-update.yaml | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit b0592015f053a3aec60b0c745f462eb4f4bdc659[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Thu Jul 20 08:13:03 2023 +0200

    fix: readd support to deactivate auto-sync which was broken by #75

 main.tf | 11 [32m+++++++[m[31m----[m
 1 file changed, 7 insertions(+), 4 deletions(-)

[33mcommit e0539bf20ff01adfca439b4a93aa44ca673f1d57[m[33m ([m[1;33mtag: v4.0.1[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Jul 19 16:09:52 2023 +0200

    chore: release 4.0.1 (#91)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit e48c76ec756de3682dc3bfdb35f439ff0ca8da11[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Wed Jul 19 16:03:41 2023 +0200

    fix: use more generic tolerations for promtail (#90)
    
    * fix: use more generic tolerations for promtail
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc   |  8 [32m++++[m[31m----[m
 locals.tf     |  6 [32m++++++[m
 sks/locals.tf | 14 [31m--------------[m
 3 files changed, 10 insertions(+), 18 deletions(-)

[33mcommit 0bc5175824b48257cc18dd4550b71256e14e4082[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 13:51:54 2023 +0200

    docs: fix README.adoc attribute

 README.adoc | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit 055178fc8eb7f671f0e8ed8b80d12423e7e99e03[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 13:46:28 2023 +0200

    ci: remove the automatic add to board since action does not support it

 .github/workflows/chart-update.yaml   | 4 [31m----[m
 .github/workflows/release-please.yaml | 2 [31m--[m
 2 files changed, 6 deletions(-)

[33mcommit 1591b4c05155d15d4fafd28ba3dbcca4ce12f9d2[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 13:33:07 2023 +0200

    ci: change order of options

 .github/workflows/chart-update.yaml | 6 [32m+++[m[31m---[m
 1 file changed, 3 insertions(+), 3 deletions(-)

[33mcommit f002ab4b82b48b3b9ddd768323d98957c7285c08[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 13:28:40 2023 +0200

    ci: rename the workflow

 .github/workflows/{chart-upgrade.yaml => chart-update.yaml} | 22 [32m+++++++++++[m[31m-----------[m
 1 file changed, 11 insertions(+), 11 deletions(-)

[33mcommit c05086a02bee3649b27ddde417efa985420a4f9d[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Fri Jul 14 07:41:30 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      | 6 [32m+++[m[31m---[m
 aks/README.adoc  | 4 [32m++[m[31m--[m
 eks/README.adoc  | 4 [32m++[m[31m--[m
 kind/README.adoc | 4 [32m++[m[31m--[m
 sks/README.adoc  | 4 [32m++[m[31m--[m
 5 files changed, 11 insertions(+), 11 deletions(-)

[33mcommit 127ea8d55bf46db3df4ad6a304db0c2d850ef7dd[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 09:35:51 2023 +0200

    ci: add support to the latest improvements on the Helm upgrade action

 .github/workflows/chart-upgrade.yaml | 12 [32m++++++++[m[31m----[m
 1 file changed, 8 insertions(+), 4 deletions(-)

[33mcommit 3c994d6b2ebef5b0c22082454e1f0236e7b7244c[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 09:32:57 2023 +0200

    ci: add support to add the autorelease PRs to the project board

 .github/workflows/release-please.yaml | 2 [32m++[m
 1 file changed, 2 insertions(+)

[33mcommit b1be58f5d03b391eacb38095bef7189902136500[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Fri Jul 14 07:44:58 2023 +0200

    docs: add chart versions to README.adoc

 README.adoc | 7 [32m++++++[m[31m-[m
 1 file changed, 6 insertions(+), 1 deletion(-)

[33mcommit 616d2f1f6e394ac8a7004bb01fd750e0004585ab[m[33m ([m[1;33mtag: v4.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Tue Jul 11 12:33:31 2023 +0000

    chore: release 4.0.0

 CHANGELOG.md | 11 [32m+++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 13 insertions(+), 2 deletions(-)

[33mcommit d6bcc0cca2ca696bbd752a0b67589c5b245b0e94[m
Author: Hugo Bollon <hugo.bollon@camptocamp.com>
Date:   Tue Jul 11 14:32:53 2023 +0200

    feat!: add support to oboukili/argocd v5 (#75)
    
    * feat!: add support to oboukili/argocd v5
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: hbollon <hbollon@users.noreply.github.com>

 README.adoc      | 16 [32m++++++++[m[31m--------[m
 aks/README.adoc  |  8 [32m++++[m[31m----[m
 eks/README.adoc  |  8 [32m++++[m[31m----[m
 kind/README.adoc |  8 [32m++++[m[31m----[m
 main.tf          | 15 [32m++++++++++[m[31m-----[m
 sks/README.adoc  |  8 [32m++++[m[31m----[m
 terraform.tf     |  2 [32m+[m[31m-[m
 7 files changed, 35 insertions(+), 30 deletions(-)

[33mcommit 96e784fe873b7a1d42b1c0fa267ba689d6cbecbd[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Jul 5 10:39:07 2023 +0200

    ci: fix versions for the upgrade workflow

 .github/workflows/chart-upgrade.yaml | 10 [32m++++[m[31m------[m
 charts/loki-microservice/Chart.yaml  | 18 [32m+++++++++[m[31m---------[m
 charts/loki-stack/Chart.yaml         | 10 [32m+++++[m[31m-----[m
 3 files changed, 18 insertions(+), 20 deletions(-)

[33mcommit 38e764203cb2953638e097fded63d6d5a78861af[m[33m ([m[1;33mtag: v3.0.1[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Tue Jul 4 17:09:18 2023 +0200

    chore: release 3.0.1 (#69)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 983d7198e4f685dcc924be335f65b9cc29b23147[m
Author: Mohammed Osman <53604473+omohammed95@users.noreply.github.com>
Date:   Tue Jul 4 16:18:34 2023 +0200

    ci: add chart dependency upgrade workflow (#70)
    
    * ci: add chart dependency upgrade workflow
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: omohammed95 <omohammed95@users.noreply.github.com>

 .github/workflows/chart-upgrade.yaml | 48 [32m++++++++++++++++++++++++++++++++++++++++++++++++[m
 README.adoc                          |  6 [32m+++[m[31m---[m
 2 files changed, 51 insertions(+), 3 deletions(-)

[33mcommit 4d60340b65c803b3b217cf208297d9d80425b4f1[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Tue Jul 4 14:38:55 2023 +0200

    docs: add missing symlink to SKS docs and link to sidebar (#68)
    
    * docs: add missing symlink to SKS docs and link to sidebar
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    Release-As: v3.0.1

 README.adoc                             | 12 [32m++++++[m[31m------[m
 aks/README.adoc                         |  4 [32m++[m[31m--[m
 docs/modules/ROOT/nav.adoc              |  1 [32m+[m
 docs/modules/ROOT/pages/sks/README.adoc |  1 [32m+[m
 eks/README.adoc                         |  4 [32m++[m[31m--[m
 kind/README.adoc                        |  4 [32m++[m[31m--[m
 sks/README.adoc                         |  4 [32m++[m[31m--[m
 7 files changed, 16 insertions(+), 14 deletions(-)

[33mcommit d23d7217905ff3ac1adf933f641551e103ed5a59[m[33m ([m[1;33mtag: v3.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Jun 28 08:51:37 2023 +0200

    chore: release 3.0.0 (#67)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 17 [32m+++++++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 19 insertions(+), 2 deletions(-)

[33mcommit 84f847727a0aa9d42ca0d8a1fed9ceb36f78ced0[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Mon Jun 19 13:16:42 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc | 6 [32m+++[m[31m---[m
 1 file changed, 3 insertions(+), 3 deletions(-)

[33mcommit be566f18c68e664392faf803a5230f3b4cbe5f4a[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 19 15:15:20 2023 +0200

    docs: add more complex example

 sks/README.adoc | 48 [32m++++++++++++++++++++++++++++++++++++++++++++++++[m
 1 file changed, 48 insertions(+)

[33mcommit d918eefbeb3d63182c992818a319869bda7a0c42[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 19 15:11:32 2023 +0200

    docs: add small comment with the reason for the promtail tolerations

 sks/locals.tf | 2 [32m++[m
 1 file changed, 2 insertions(+)

[33mcommit 00dfa2b4d2b12353e06935d9f36644128213a2e4[m
Author: lentidas <lentidas@users.noreply.github.com>
Date:   Mon Jun 19 13:08:37 2023 +0000

    docs(terraform-docs): generate docs and write to README.adoc

 README.adoc      |  10 [32m++[m[31m--[m
 aks/README.adoc  |  12 [32m++[m[31m--[m
 eks/README.adoc  |  12 [32m++[m[31m--[m
 kind/README.adoc |  30 [32m+++++[m[31m-----[m
 sks/README.adoc  | 316 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 5 files changed, 349 insertions(+), 31 deletions(-)

[33mcommit a188e0624e854cfb7c2dc7099bc780ed02a1f0a1[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 19 15:07:46 2023 +0200

    docs: add SKS variant README.adoc

 sks/README.adoc | 59 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 1 file changed, 59 insertions(+)

[33mcommit b4f1441753ba5af2b5828eca39f9b1cff31e0a5a[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Wed Jun 14 10:10:30 2023 +0200

    fix: activate insecure mode by default for kind

 kind/extra-variables.tf | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit ba862583ea09272415cd9f5b2896a5e8e1849927[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 12 11:54:00 2023 +0200

    fix!: standardize variables like other modules
    
    This is a breaking change because I renamed some parameters to be the same as other modules. This will allow us to create a local that can used on all module calls, in the root module.

 kind/extra-variables.tf | 9 [32m+++++[m[31m----[m
 kind/locals.tf          | 4 [32m++[m[31m--[m
 sks/extra-variables.tf  | 8 [32m++++[m[31m----[m
 sks/locals.tf           | 6 [32m+++[m[31m---[m
 4 files changed, 14 insertions(+), 13 deletions(-)

[33mcommit 145e08bd1214ccc3635d04719d3ccd0a29c67ce0[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 5 12:57:26 2023 +0200

    feat: add SKS variant with needed configuration to use SOS

 .github/workflows/terraform-docs.yaml |  2 [32m+[m[31m-[m
 sks/extra-variables.tf                | 14 [32m++++++++++++++[m
 sks/locals.tf                         | 83 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 sks/main.tf                           | 15 [32m+++++++++++++++[m
 sks/outputs.tf                        | 10 [32m++++++++++[m
 sks/terraform.tf                      |  1 [32m+[m
 sks/variables.tf                      |  1 [32m+[m
 7 files changed, 125 insertions(+), 1 deletion(-)

[33mcommit 35d92f4ae9d69897ef41057ac411b71ad988097c[m
Author: Gonçalo Heleno <goncalo.heleno@camptocamp.com>
Date:   Mon Jun 5 12:00:38 2023 +0200

    docs: add descriptions to outputs

 aks/outputs.tf  | 7 [32m++++[m[31m---[m
 eks/outputs.tf  | 7 [32m++++[m[31m---[m
 kind/outputs.tf | 8 [32m+++++[m[31m---[m
 outputs.tf      | 1 [32m+[m
 4 files changed, 14 insertions(+), 9 deletions(-)

[33mcommit 51e94dec8b6189a00daeed22c8db5ac747232fb5[m[33m ([m[1;33mtag: v2.3.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Jun 9 13:56:28 2023 +0200

    chore: release 2.3.0 (#64)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 88617bdf6f1710afdfe4447b63bd43ca2babecfb[m
Author: Mohammed Osman <53604473+omohammed95@users.noreply.github.com>
Date:   Fri Jun 9 09:41:56 2023 +0200

    feat: add var that enables compactor retention (#62)
    
    * feat: add var that enables compactor retention
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * refactor: use more lighter variable for retention
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * feat: call retention var in submodules
    
    * feat: set retention period in day
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * feat: set retention enabled to yes
    
    ---------
    
    Co-authored-by: omohammed95 <omohammed95@users.noreply.github.com>

 README.adoc      | 16 [32m+++++++++++++++[m[31m-[m
 aks/README.adoc  | 14 [32m++++++++++++++[m
 aks/main.tf      |  1 [32m+[m
 eks/README.adoc  | 14 [32m++++++++++++++[m
 eks/main.tf      |  1 [32m+[m
 kind/README.adoc | 14 [32m++++++++++++++[m
 kind/main.tf     |  1 [32m+[m
 locals.tf        |  7 [32m+++[m[31m----[m
 variables.tf     | 11 [32m+++++++++++[m
 9 files changed, 74 insertions(+), 5 deletions(-)

[33mcommit 80167b758276ee3d47e1912a3983bed6ccebbdda[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Tue May 30 09:41:32 2023 +0200

    refactor/fix: rename a few files and remove unnecessary variables (#61)
    
    * fix!: removed unnecessary variables
    
    * refactor: rename application project and a few files
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 README.adoc                 | 52 [32m++++++++++++[m[31m----------------------------------------[m
 aks/README.adoc             | 32 [32m++[m[31m------------------------------[m
 aks/main.tf                 |  2 [31m--[m
 aks/terraform.tf            |  1 [32m+[m
 aks/versions.tf             |  1 [31m-[m
 eks/README.adoc             | 32 [32m++[m[31m------------------------------[m
 eks/main.tf                 |  2 [31m--[m
 eks/terraform.tf            |  1 [32m+[m
 eks/versions.tf             |  1 [31m-[m
 kind/README.adoc            | 32 [32m++[m[31m------------------------------[m
 kind/main.tf                |  2 [31m--[m
 kind/terraform.tf           |  1 [32m+[m
 kind/versions.tf            |  1 [31m-[m
 main.tf                     |  2 [32m+[m[31m-[m
 output.tf => outputs.tf     |  0
 versions.tf => terraform.tf |  4 [32m++[m[31m--[m
 variables.tf                | 18 [32m+++[m[31m---------------[m
 17 files changed, 27 insertions(+), 157 deletions(-)

[33mcommit d3efc78852326a63f5656c8148e71b9786afff84[m[33m ([m[1;33mtag: v2.2.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed May 24 16:21:49 2023 +0200

    chore: release 2.2.0 (#60)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 8d00917d7c315d70dd2d1b5852c19f40578e0590[m
Author: Mohammed Osman <53604473+omohammed95@users.noreply.github.com>
Date:   Wed May 24 15:01:12 2023 +0200

    feat: configure ingester replication factor (#59)
    
    * feat: configure ingester replication factor
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * fix: terraform format correction
    
    * fix: correct syntax
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: omohammed95 <omohammed95@users.noreply.github.com>

 README.adoc      | 54 [32m++++[m[31m--------------------------------------------------[m
 aks/README.adoc  | 50 [32m++[m[31m------------------------------------------------[m
 eks/README.adoc  | 50 [32m++[m[31m------------------------------------------------[m
 kind/README.adoc | 50 [32m++[m[31m------------------------------------------------[m
 locals.tf        | 10 [32m++++++++[m[31m--[m
 variables.tf     | 13 [31m-------------[m
 6 files changed, 18 insertions(+), 209 deletions(-)

[33mcommit dc3f025398e8dc844cb564e6c33cb0405e95064b[m[33m ([m[1;33mtag: v2.1.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Thu May 11 13:13:34 2023 +0200

    chore: release 2.1.0 (#55)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 13 [32m+++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 15 insertions(+), 2 deletions(-)

[33mcommit 6aa151b1134f02e3630e67b63bd6a886c87b6513[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Wed May 10 14:23:55 2023 +0200

    fix(azure): storage account key support (#48)
    
    * fix(azure): storage account key support
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>

 README.adoc   |  4 [32m++[m[31m--[m
 aks/locals.tf | 18 [32m++++++++++[m[31m--------[m
 2 files changed, 12 insertions(+), 10 deletions(-)

[33mcommit f8a4b9f64d4ae97d193d1c841aac215637fa14a8[m
Author: Mohammed Osman <53604473+omohammed95@users.noreply.github.com>
Date:   Mon May 8 16:52:55 2023 +0200

    feat: add var for ingester replicas (#57)
    
    * fix: adding more replicas for ingester
    
    * fix: adding variable for ingester replicas
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: omohammed95 <omohammed95@users.noreply.github.com>

 README.adoc      | 48 [32m+++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 aks/README.adoc  | 46 [32m++++++++++++++++++++++++++++++++++++++++++++++[m
 eks/README.adoc  | 46 [32m++++++++++++++++++++++++++++++++++++++++++++++[m
 kind/README.adoc | 46 [32m++++++++++++++++++++++++++++++++++++++++++++++[m
 locals.tf        |  3 [32m++[m[31m-[m
 variables.tf     | 13 [32m+++++++++++++[m
 6 files changed, 200 insertions(+), 2 deletions(-)

[33mcommit 2a571f030738ed5fedc35feb50c832210921588c[m
Author: tyrossel <tanguy.rossel@camptocamp.com>
Date:   Mon May 1 08:34:13 2023 +0200

    fix(loki-stack): set static Grafana agent tag (#54)
    
    * fix(loki-stack): set static Grafana agent tag
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: Tanguy Rossel <trossel@wrk149.wrk.lsn.camptocamp.com>
    Co-authored-by: tyrossel <tyrossel@users.noreply.github.com>

 README.adoc                                    | 6 [32m+++[m[31m---[m
 aks/README.adoc                                | 4 [32m++[m[31m--[m
 charts/loki-stack/templates/event_handler.yaml | 2 [32m+[m[31m-[m
 eks/README.adoc                                | 4 [32m++[m[31m--[m
 kind/README.adoc                               | 4 [32m++[m[31m--[m
 5 files changed, 10 insertions(+), 10 deletions(-)

[33mcommit fc8a31017c7dfe1e90723270d5d347e9ca6c1262[m[33m ([m[1;33mtag: v2.0.2[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Apr 26 16:20:28 2023 +0200

    chore: release 2.0.2 (#53)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 710ea823b9446b21f5ec5a19ea59f231cc159164[m
Author: tyrossel <tanguy.rossel@camptocamp.com>
Date:   Wed Apr 26 16:18:48 2023 +0200

    fix: grafana agent static tag (#52)
    
    * fix: grafana agent static tag
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * chore: update
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: Tanguy Rossel <trossel@wrk149.wrk.lsn.camptocamp.com>
    Co-authored-by: tyrossel <tyrossel@users.noreply.github.com>

 README.adoc                                           | 4 [32m++[m[31m--[m
 charts/loki-microservice/templates/event_handler.yaml | 2 [32m+[m[31m-[m
 locals.tf                                             | 7 [32m++++[m[31m---[m
 3 files changed, 7 insertions(+), 6 deletions(-)

[33mcommit 450890bbafb8ef8cb4310b0af3b29f8ef2f4bb42[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Wed Apr 26 15:28:23 2023 +0200

    ci: point existing workflows to main branch and add project workflow (#51)
    
    * ci: point existing workflows to main branch and add project workflow
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * ci: fix names and whitespace
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>

 .github/workflows/linters.yaml           |   4 [32m+[m[31m-[m
 .github/workflows/pr-issues-project.yaml |  19 [32m+++++++[m
 .github/workflows/release-please.yaml    |   4 [32m+[m[31m-[m
 .github/workflows/terraform-docs.yaml    |   4 [32m+[m[31m-[m
 README.adoc                              | 198 [32m+++++++++++++++++++++++++++++++++++[m[31m------------------------------------[m
 aks/README.adoc                          | 218 [32m+++++++++++++++++++++++++++++++++++++++[m[31m----------------------------------------[m
 eks/README.adoc                          | 214 [32m++++++++++++++++++++++++++++++++++++++[m[31m---------------------------------------[m
 kind/README.adoc                         | 216 [32m+++++++++++++++++++++++++++++++++++++++[m[31m---------------------------------------[m
 8 files changed, 448 insertions(+), 429 deletions(-)

[33mcommit 110f269fa687ce3e5b512207664c7ae187fc5a27[m[33m ([m[1;33mtag: v2.0.1[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Apr 17 16:04:09 2023 +0200

    chore(main): release 2.0.1 (#50)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit b0a875808a94464f145a6ab940d1d71939119bf1[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Mon Apr 17 16:02:44 2023 +0200

    fix(loki-stack): set Loki datasource isDefault to false (#49)
    
    * fix(loki-stack): set Loki datasource isDefault to false
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>

 README.adoc      | 4 [32m++[m[31m--[m
 aks/README.adoc  | 4 [32m++[m[31m--[m
 eks/README.adoc  | 4 [32m++[m[31m--[m
 kind/README.adoc | 4 [32m++[m[31m--[m
 locals.tf        | 1 [32m+[m
 5 files changed, 9 insertions(+), 8 deletions(-)

[33mcommit 86283db15d6c474ecf800cba5f11aa3d72fd63e4[m[33m ([m[1;33mtag: v2.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Thu Apr 13 18:42:22 2023 +0200

    chore(main): release 2.0.0 (#47)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 11 [32m+++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 13 insertions(+), 2 deletions(-)

[33mcommit 6e7cfa20f64f4781c7d44fedf6d7e2d09078e90d[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Thu Apr 13 18:34:15 2023 +0200

    feat(azure)!: use managed identity to access object storage (#40)
    
    * feat(azure)!: use managed identity to access object storage
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>

 aks/README.adoc        | 56 [32m++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--------[m
 aks/extra-variables.tf | 21 [32m++++++++++++++++[m[31m-----[m
 aks/locals.tf          | 66 [32m++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m----------------[m
 aks/main.tf            | 40 [32m++++++++++++++++++++++++++++++++++++++++[m
 locals.tf              | 12 [32m++++++++++[m[31m--[m
 5 files changed, 164 insertions(+), 31 deletions(-)

[33mcommit 70d0fdc46f49312b0b602a7e33343ab84f5c5249[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Thu Apr 13 12:06:08 2023 +0200

    chore(loki-microservices): upgrade helm chart (#46)
    
    * chore(loki-microservices): upgrade helm chart
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>

 README.adoc                                                  |   4 [32m++[m[31m--[m
 aks/README.adoc                                              |   4 [32m++[m[31m--[m
 charts/loki-microservice/Chart.lock                          |   6 [32m+++[m[31m---[m
 charts/loki-microservice/Chart.yaml                          |   2 [32m+[m[31m-[m
 charts/loki-microservice/charts/loki-distributed-0.52.0.tgz  | Bin [31m34339[m -> [32m0[m bytes
 charts/loki-microservice/charts/loki-distributed-0.69.10.tgz | Bin [31m0[m -> [32m40980[m bytes
 eks/README.adoc                                              |   4 [32m++[m[31m--[m
 kind/README.adoc                                             |   4 [32m++[m[31m--[m
 locals.tf                                                    |  28 [32m+++++++++++++++[m[31m-------------[m
 9 files changed, 27 insertions(+), 25 deletions(-)

[33mcommit 96464fb7799977938bf87bdcf7a91ff5c1bb6065[m[33m ([m[1;33mtag: v1.1.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Apr 7 07:32:25 2023 +0200

    chore(main): release 1.1.0 (#45)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 1c55c1b7d39cde0ecaaeb0d7df5a576284e1cf62[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Fri Apr 7 07:27:23 2023 +0200

    feat: ship k8s events to Loki (#44)
    
    * feat: ship k8s events to Loki
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>

 README.adoc                                           |   4 [32m+[m[31m--[m
 aks/README.adoc                                       |   4 [32m+[m[31m--[m
 charts/loki-microservice/templates/event_handler.yaml | 121 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 charts/loki-stack/templates/event_handler.yaml        | 121 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 eks/README.adoc                                       |   4 [32m+[m[31m--[m
 kind/README.adoc                                      |   4 [32m+[m[31m--[m
 locals.tf                                             |  11 [32m+++++[m[31m-[m
 variables.tf                                          |   1 [32m+[m
 8 files changed, 261 insertions(+), 9 deletions(-)

[33mcommit 31517584a250b06dc67267084616b1679a8b827f[m[33m ([m[1;33mtag: v1.0.0[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Mar 27 10:10:37 2023 +0200

    chore(main): release 1.0.0 (#43)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 72a80d11b0fce13c6acfab76c103888e5c3d733a[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Mon Mar 27 10:08:44 2023 +0200

    chore: release v1.0.0 (#42)
    
    Release-As: v1.0.0

[33mcommit 90b84f1fdc4cb60e4c94ec880a0642013310cb7f[m
Author: vquiby <86775146+vquiby@users.noreply.github.com>
Date:   Fri Mar 24 11:42:35 2023 +0100

    docs: add docs structure and PR template (#41)

 .github/pull_request_template.md         | 19 [32m+++++++++++++++++++[m
 README.adoc                              | 11 [32m++[m[31m---------[m
 README.md                                | 60 [31m------------------------------------------------------------[m
 aks/README.adoc                          | 12 [32m++[m[31m----------[m
 docs/antora.yml                          |  7 [32m+++++++[m
 docs/modules/ROOT/nav.adoc               |  7 [32m+++++++[m
 docs/modules/ROOT/pages/README.adoc      |  1 [32m+[m
 docs/modules/ROOT/pages/aks/README.adoc  |  1 [32m+[m
 docs/modules/ROOT/pages/eks/README.adoc  |  1 [32m+[m
 docs/modules/ROOT/pages/kind/README.adoc |  1 [32m+[m
 eks/README.adoc                          | 12 [32m++[m[31m----------[m
 kind/README.adoc                         | 12 [32m++[m[31m----------[m
 12 files changed, 45 insertions(+), 99 deletions(-)

[33mcommit 78c30c0671b51b7da6dcf208582c81e5d71f94d5[m[33m ([m[1;33mtag: v1.0.0-alpha.13[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Mar 10 14:17:38 2023 +0100

    chore(main): release 1.0.0-alpha.13 (#38)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit f794967b6577c4c3481a4bfdf08acf12f25314d4[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Fri Mar 10 14:16:33 2023 +0100

    fix(terraform): add remaining version requirements (#37)
    
    * fix: add remaining version requirements
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    Release-As: v1.0.0-alpha.13

 README.adoc      | 30 [32m++++++++++++++++++[m[31m------------[m
 aks/README.adoc  | 10 [32m++++++++[m[31m--[m
 eks/README.adoc  | 10 [32m++++++++[m[31m--[m
 kind/README.adoc | 10 [32m++++++++[m[31m--[m
 versions.tf      |  8 [32m++++++++[m
 5 files changed, 50 insertions(+), 18 deletions(-)

[33mcommit 64590287f3bfb1a51ec4485ab734b126f71d5c14[m[33m ([m[1;33mtag: v1.0.0-alpha.12[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Mar 6 12:14:36 2023 +0100

    chore(main): release 1.0.0-alpha.12 (#36)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 8dc8a9fb1a30716b4a1e3b927032e5a6a477edf7[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Mon Mar 6 12:10:11 2023 +0100

    feat(eks): add Loki microservices to the EKS variant (#35)
    
    * feat(eks): add modifications neccessary for Loki microservices
    
    * docs: add descriptions to variables
    
    * fix(eks): correct position of ServiceAccount and the paths for boltdb
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * fix: change to looser versions constraints as per best practices
    
    See documentation [here](https://developer.hashicorp.com/terraform/language/providers/requirements#version-constraints).
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * chore: terraform fmt
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    Release-As: v1.0.0-alpha.12

 README.adoc      | 60 [32m+++++++++++++++++++++++++++++++++++++[m[31m-----------------------[m
 aks/README.adoc  | 48 [32m+++++++++++++++++++++++++++++++[m[31m-----------------[m
 eks/README.adoc  | 48 [32m+++++++++++++++++++++++++++++++[m[31m-----------------[m
 eks/locals.tf    | 85 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--------------------------[m
 eks/main.tf      |  2 [32m+[m[31m-[m
 kind/README.adoc | 48 [32m+++++++++++++++++++++++++++++++[m[31m-----------------[m
 variables.tf     | 29 [32m+++++++++++++++++[m[31m------------[m
 versions.tf      |  9 [32m++++++[m[31m---[m
 8 files changed, 213 insertions(+), 116 deletions(-)

[33mcommit f9d2e456d08be0873ad159f7f273d75c7a0ecdf0[m[33m ([m[1;33mtag: v1.0.0-alpha.11[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Feb 22 13:16:22 2023 +0100

    chore(main): release 1.0.0-alpha.11 (#34)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit b48aa6999b1fce4779f9e4376efd84420ac24cc3[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Wed Feb 22 13:14:36 2023 +0100

    feat(loki-microservices): flush ingester chunks on shutdown (#31)
    
    * feat(loki-microservices): flush ingester chunks on shutdown
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.11

 README.adoc      | 4 [32m++[m[31m--[m
 aks/README.adoc  | 4 [32m++[m[31m--[m
 eks/README.adoc  | 4 [32m++[m[31m--[m
 kind/README.adoc | 4 [32m++[m[31m--[m
 locals.tf        | 1 [32m+[m
 5 files changed, 9 insertions(+), 8 deletions(-)

[33mcommit 68544569ba9c2170207398285b208bf61c591cd4[m[33m ([m[1;33mtag: v1.0.0-alpha.10[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Feb 22 12:36:59 2023 +0100

    chore(main): release 1.0.0-alpha.10 (#33)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 6dc0ef9e1135763446df854380bad1a20d8f6081[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Wed Feb 22 12:31:41 2023 +0100

    feat(Kind): add Loki microservices (#32)
    
    * feat(Kind): add Loki microservices
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.10

 README.adoc      |  4 [32m++[m[31m--[m
 aks/README.adoc  |  4 [32m++[m[31m--[m
 eks/README.adoc  |  4 [32m++[m[31m--[m
 kind/README.adoc |  4 [32m++[m[31m--[m
 kind/locals.tf   | 91 [32m++++++++++++++++++++++++++++++++++++++++++++++[m[31m---------------------------------------------[m
 kind/main.tf     |  2 [32m+[m[31m-[m
 6 files changed, 55 insertions(+), 54 deletions(-)

[33mcommit 219dd9a5461e8847031573acdfba50001ef58e8f[m[33m ([m[1;33mtag: v1.0.0-alpha.9[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Feb 13 13:46:00 2023 +0100

    chore(main): release 1.0.0-alpha.9 (#30)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 12 [32m++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 14 insertions(+), 2 deletions(-)

[33mcommit b646ad7c8248a9e12cfa881faaceed0455aa60af[m
Author: Federico Sismondi <federico.sismondi@camptocamp.com>
Date:   Mon Feb 13 13:36:24 2023 +0100

    chore: release 1.0.0-alpha.9 (#29)
    
    Release-As: 1.0.0-alpha.9

[33mcommit dbb911089343c123bbfa6c048e005e3b01ee7868[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Mon Feb 13 13:32:51 2023 +0100

    feat(loki-microservices): optional filebeat (#26)
    
    * feat(loki-microservices): optional filebeat
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    Release-As: 1.0.0-alpha.8

 README.adoc                                         |  18 [32m++++++++++++++++[m[31m--[m
 aks/README.adoc                                     |  18 [32m++++++++++++++++[m[31m--[m
 aks/main.tf                                         |   1 [32m+[m
 charts/loki-microservice/Chart.lock                 |   9 [32m++++++[m[31m---[m
 charts/loki-microservice/Chart.yaml                 |   8 [32m++++++[m[31m--[m
 charts/loki-microservice/charts/filebeat-7.17.3.tgz | Bin [31m0[m -> [32m12400[m bytes
 charts/loki-microservice/charts/promtail-6.2.1.tgz  | Bin [31m12731[m -> [32m0[m bytes
 charts/loki-microservice/charts/promtail-6.2.3.tgz  | Bin [31m0[m -> [32m12729[m bytes
 eks/README.adoc                                     |  18 [32m++++++++++++++++[m[31m--[m
 eks/main.tf                                         |   1 [32m+[m
 kind/README.adoc                                    |  18 [32m++++++++++++++++[m[31m--[m
 kind/main.tf                                        |   1 [32m+[m
 locals.tf                                           |  17 [32m+++++++++++++++[m[31m--[m
 variables.tf                                        |   5 [32m+++++[m
 14 files changed, 99 insertions(+), 15 deletions(-)

[33mcommit 563fa6b32e79cf5c84224fdf02a8832a2f4aed9e[m[33m ([m[1;33mtag: v1.0.0-alpha.8[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Feb 13 12:15:02 2023 +0100

    chore(main): release 1.0.0-alpha.8 (#27)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit b98a4bd07c1b8c483f6ff968d09320e49b324aa8[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Mon Feb 13 12:13:37 2023 +0100

    feat(loki-microservices): add frontend ingress (#25)
    
    * feat(loki-microservices): add frontend ingress
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.8

 README.adoc                                          |  51 [32m+++++++++++++[m[31m-[m
 aks/README.adoc                                      |  41 [32m++++++++++[m[31m-[m
 aks/main.tf                                          |   1 [32m+[m
 aks/outputs.tf                                       |   5 [32m++[m
 charts/loki-microservice/templates/ingressRoute.yaml |  65 [32m+++++++++++++++++[m
 eks/README.adoc                                      |  41 [32m++++++++++[m[31m-[m
 eks/main.tf                                          |   1 [32m+[m
 eks/outputs.tf                                       |   5 [32m++[m
 kind/README.adoc                                     |  41 [32m++++++++++[m[31m-[m
 kind/main.tf                                         |   1 [32m+[m
 kind/outputs.tf                                      |   5 [32m++[m
 locals.tf                                            | 256 [32m+++++++++++++++++++++++++++++++++++[m[31m--------------------------------[m
 main.tf                                              |  10 [32m+++[m
 output.tf                                            |  12 [32m++++[m
 outputs.tf                                           |   4 [31m--[m
 variables.tf                                         |  10 [32m+++[m
 versions.tf                                          |   3 [32m+[m
 17 files changed, 418 insertions(+), 134 deletions(-)

[33mcommit 3c927ec8bdc3b1bf04e4937fd9d4373823bb2135[m[33m ([m[1;33mtag: v1.0.0-alpha.7[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Wed Feb 1 14:14:02 2023 +0100

    chore(main): release 1.0.0-alpha.7 (#24)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 3ef695f49751ea71cb8d6e24fa4b94d3a00a38d5[m
Author: Federico Sismondi <federico.sismondi@camptocamp.com>
Date:   Wed Feb 1 14:12:39 2023 +0100

    fix(ruler): move value block (#23)
    
    * fix(ruler): move value block
    
    ---------
    
    Co-authored-by: fsismondi <fsismondi@users.noreply.github.com>
    Release-As: 1.0.0-alpha.7

 README.adoc      | 4 [32m++[m[31m--[m
 aks/README.adoc  | 4 [32m++[m[31m--[m
 eks/README.adoc  | 4 [32m++[m[31m--[m
 kind/README.adoc | 4 [32m++[m[31m--[m
 locals.tf        | 5 [32m+++[m[31m--[m
 5 files changed, 11 insertions(+), 10 deletions(-)

[33mcommit 2f37ef34b54ad1d3010fe089de2115910425779f[m[33m ([m[1;33mtag: v1.0.0-alpha.6[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Tue Jan 31 10:39:56 2023 +0100

    chore(main): release 1.0.0-alpha.6 (#22)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit aa015fe7f6f1985be986eed22b82095ada65e994[m
Author: Jeremy Barascut <jbarascut@users.noreply.github.com>
Date:   Tue Jan 31 10:38:38 2023 +0100

    feat(helm): download all used charts (#21)
    
    * feat(helm): download all used charts
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    Release-As: 1.0.0-alpha.6

 README.adoc                                                                      |    4 [32m+[m[31m-[m
 aks/README.adoc                                                                  |    4 [32m+[m[31m-[m
 charts/loki-microservice/Chart.lock                                              |    9 [32m+[m
 charts/loki-microservice/charts/loki-distributed-0.52.0.tgz                      |  Bin [31m0[m -> [32m34339[m bytes
 charts/loki-microservice/charts/promtail-6.2.1.tgz                               |  Bin [31m0[m -> [32m12731[m bytes
 charts/loki-stack/Chart.lock                                                     |    6 [32m+[m[31m-[m
 charts/loki-stack/charts/loki-stack-2.8.9.tgz                                    |  Bin [31m0[m -> [32m129849[m bytes
 charts/loki-stack/charts/loki-stack/.helmignore                                  |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/Chart.yaml                                   |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/README.md                                    |   60 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/.helmignore                  |    2 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/Chart.yaml                   |   12 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/Makefile                     |    1 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/README.md                    |  203 [31m-----[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/default/Makefile    |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/default/README.md   |   27 [31m-[m
 .../loki-stack/charts/loki-stack/charts/filebeat/examples/default/test/goss.yaml |   47 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/Makefile        |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/README.md       |   27 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/test/goss.yaml  |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/values.yaml     |    5 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/security/Makefile   |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/security/README.md  |   28 [31m-[m
 .../charts/loki-stack/charts/filebeat/examples/security/test/goss.yaml           |    9 [31m-[m
 .../loki-stack/charts/loki-stack/charts/filebeat/examples/security/values.yaml   |   37 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/NOTES.txt          |    2 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/_helpers.tpl       |   32 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/clusterrole.yaml   |   22 [31m-[m
 .../charts/loki-stack/charts/filebeat/templates/clusterrolebinding.yaml          |   19 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/configmap.yaml     |   17 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/daemonset.yaml     |  171 [31m----[m
 .../loki-stack/charts/loki-stack/charts/filebeat/templates/serviceaccount.yaml   |   15 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/values.yaml                  |  142 [31m---[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/.helmignore                |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/Chart.yaml                 |   15 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/README.md                  |  126 [31m---[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/NOTES.txt        |   11 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/_helpers.tpl     |   66 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/clusterrole.yaml |   17 [31m-[m
 .../charts/loki-stack/charts/fluent-bit/templates/clusterrolebinding.yaml        |   19 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/configmap.yaml   |   73 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/daemonset.yaml   |   80 [31m--[m
 .../charts/loki-stack/charts/fluent-bit/templates/podsecuritypolicy.yaml         |   34 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/role.yaml        |   19 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/rolebinding.yaml |   19 [31m-[m
 .../charts/loki-stack/charts/fluent-bit/templates/service-headless.yaml          |   22 [31m-[m
 .../loki-stack/charts/loki-stack/charts/fluent-bit/templates/serviceaccount.yaml |   12 [31m-[m
 .../loki-stack/charts/loki-stack/charts/fluent-bit/templates/servicemonitor.yaml |   35 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/values.yaml                |  120 [31m---[m
 charts/loki-stack/charts/loki-stack/charts/grafana/.helmignore                   |   23 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/Chart.yaml                    |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/README.md                     |  561 [31m------------[m
 charts/loki-stack/charts/loki-stack/charts/grafana/ci/default-values.yaml        |    1 [31m-[m
 .../charts/loki-stack/charts/grafana/ci/with-dashboard-json-values.yaml          |   53 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/grafana/ci/with-dashboard-values.yaml |   19 [31m-[m
 .../charts/loki-stack/charts/grafana/ci/with-image-renderer-values.yaml          |   19 [31m-[m
 .../loki-stack/charts/loki-stack/charts/grafana/dashboards/custom-dashboard.json |    1 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/NOTES.txt           |   54 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/_helpers.tpl        |  163 [31m----[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/_pod.tpl            |  562 [31m------------[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/clusterrole.yaml    |   25 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/clusterrolebinding.yaml           |   24 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/configmap-dashboard-provider.yaml |   29 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/configmap.yaml      |   82 [31m--[m
 .../charts/loki-stack/charts/grafana/templates/dashboards-json-configmap.yaml    |   35 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/deployment.yaml     |   50 [31m--[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/extra-manifests.yaml   |    4 [31m-[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/headless-service.yaml  |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/hpa.yaml            |   20 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/image-renderer-deployment.yaml    |  119 [31m---[m
 .../loki-stack/charts/grafana/templates/image-renderer-network-policy.yaml       |   76 [31m--[m
 .../charts/loki-stack/charts/grafana/templates/image-renderer-service.yaml       |   30 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/ingress.yaml        |   78 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/networkpolicy.yaml  |   37 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/poddisruptionbudget.yaml          |   22 [31m-[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/podsecuritypolicy.yaml |   49 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/pvc.yaml            |   33 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/role.yaml           |   32 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/rolebinding.yaml    |   25 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/secret-env.yaml     |   14 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/secret.yaml         |   26 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/service.yaml        |   51 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/serviceaccount.yaml |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/servicemonitor.yaml |   43 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/statefulset.yaml    |   52 [31m--[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-configmap.yaml         |   17 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-podsecuritypolicy.yaml |   29 [31m-[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/tests/test-role.yaml   |   14 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-rolebinding.yaml       |   17 [31m-[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-serviceaccount.yaml    |    9 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/tests/test.yaml     |   48 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/grafana/values.yaml                   |  809 [31m-----------------[m
 charts/loki-stack/charts/loki-stack/charts/logstash/.helmignore                  |    2 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/Chart.yaml                   |   12 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/Makefile                     |    1 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/README.md                    |  208 [31m-----[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/default/Makefile    |   16 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/default/README.md   |   17 [31m-[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/default/test/goss.yaml |   43 [31m-[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/elasticsearch/Makefile |   17 [31m-[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/README.md           |   28 [31m-[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/test/goss.yaml      |   56 [31m--[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/values.yaml         |   12 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/Makefile        |   16 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/README.md       |   17 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/test/goss.yaml  |   42 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/values.yaml     |    2 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/security/Makefile   |   14 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/security/README.md  |   28 [31m-[m
 .../charts/loki-stack/charts/logstash/examples/security/test/goss.yaml           |   64 [31m--[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/security/values.yaml   |   40 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/NOTES.txt          |    2 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/_helpers.tpl       |   31 [31m-[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/configmap-config.yaml |   17 [31m-[m
 .../charts/loki-stack/charts/logstash/templates/configmap-pipeline.yaml          |   17 [31m-[m
 .../charts/loki-stack/charts/logstash/templates/poddisruptionbudget.yaml         |   17 [31m-[m
 .../charts/loki-stack/charts/logstash/templates/podsecuritypolicy.yaml           |   14 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/role.yaml          |   25 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/rolebinding.yaml   |   24 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/secret.yaml        |   27 [31m-[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/service-headless.yaml |   23 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/service.yaml       |   23 [31m-[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/serviceaccount.yaml   |   20 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/statefulset.yaml   |  200 [31m-----[m
 charts/loki-stack/charts/loki-stack/charts/logstash/values.yaml                  |  248 [31m------[m
 charts/loki-stack/charts/loki-stack/charts/loki/.helmignore                      |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/Chart.yaml                       |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/README.md                        |   70 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/NOTES.txt              |    3 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/_helpers.tpl           |   75 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/configmap-alert.yaml   |   17 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/ingress.yaml           |   55 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/networkpolicy.yaml     |   26 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/pdb.yaml               |   17 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/podsecuritypolicy.yaml |   41 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/role.yaml              |   20 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/rolebinding.yaml       |   20 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/secret.yaml            |   14 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/service-headless.yaml  |   24 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/service.yaml           |   43 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/serviceaccount.yaml    |   16 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/servicemonitor.yaml    |   38 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/statefulset.yaml       |  150 [31m----[m
 charts/loki-stack/charts/loki-stack/charts/loki/values.yaml                      |  281 [31m------[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/.helmignore                |   23 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/Chart.lock                 |    6 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/Chart.yaml                 |   30 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/README.md                  |  226 [31m-----[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/.helmignore    |   21 [31m-[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/Chart.yaml     |   19 [31m-[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/OWNERS         |    6 [31m-[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/README.md      |   68 [31m--[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/NOTES.txt   |   10 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/_helpers.tpl           |   79 [31m--[m
 .../prometheus/charts/kube-state-metrics/templates/clusterrolebinding.yaml       |   20 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/deployment.yaml        |  148 [31m----[m
 .../charts/prometheus/charts/kube-state-metrics/templates/kubeconfig-secret.yaml |   12 [31m-[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/pdb.yaml    |   14 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/podsecuritypolicy.yaml |   39 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/psp-clusterrole.yaml   |   19 [31m-[m
 .../prometheus/charts/kube-state-metrics/templates/psp-clusterrolebinding.yaml   |   16 [31m-[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/role.yaml   |  196 [31m-----[m
 .../charts/prometheus/charts/kube-state-metrics/templates/rolebinding.yaml       |   24 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/service.yaml           |   35 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/serviceaccount.yaml    |   15 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/servicemonitor.yaml    |   43 [31m-[m
 .../charts/prometheus/charts/kube-state-metrics/templates/stsdiscovery-role.yaml |   26 [31m-[m
 .../prometheus/charts/kube-state-metrics/templates/stsdiscovery-rolebinding.yaml |   17 [31m-[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/values.yaml    |  216 [31m-----[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/NOTES.txt        |  112 [31m---[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/_helpers.tpl     |  282 [31m------[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/clusterrole.yaml  |   21 [31m-[m
 .../loki-stack/charts/prometheus/templates/alertmanager/clusterrolebinding.yaml  |   20 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/cm.yaml           |   19 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/deploy.yaml       |  172 [31m----[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/headless-svc.yaml |   31 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/ingress.yaml      |   57 [31m--[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/netpol.yaml       |   20 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/pdb.yaml          |   14 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/psp.yaml          |   46 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/pvc.yaml          |   37 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/role.yaml         |   24 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/rolebinding.yaml  |   23 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/service.yaml      |   53 [31m--[m
 .../loki-stack/charts/prometheus/templates/alertmanager/serviceaccount.yaml      |   11 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/sts.yaml          |  181 [31m----[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/daemonset.yaml   |  146 [31m---[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/psp.yaml         |   55 [31m--[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/role.yaml        |   17 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/rolebinding.yaml |   19 [31m-[m
 .../loki-stack/charts/prometheus/templates/node-exporter/serviceaccount.yaml     |   11 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/svc.yaml         |   47 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/clusterrole.yaml   |   21 [31m-[m
 .../loki-stack/charts/prometheus/templates/pushgateway/clusterrolebinding.yaml   |   16 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/deploy.yaml        |  119 [31m---[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/ingress.yaml       |   54 [31m--[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/netpol.yaml        |   20 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/pdb.yaml           |   14 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/psp.yaml           |   42 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/pvc.yaml           |   31 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/service.yaml       |   41 [31m-[m
 .../loki-stack/charts/prometheus/templates/pushgateway/serviceaccount.yaml       |   11 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/vpa.yaml           |   20 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/server/clusterrole.yaml        |   48 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/server/clusterrolebinding.yaml |   16 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/cm.yaml   |   82 [31m--[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/deploy.yaml  |  304 [31m-------[m
 .../charts/loki-stack/charts/prometheus/templates/server/headless-svc.yaml       |   37 [31m-[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/ingress.yaml |   59 [31m--[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/netpol.yaml  |   18 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/pdb.yaml  |   14 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/psp.yaml  |   51 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/pvc.yaml  |   39 [31m-[m
 .../charts/loki-stack/charts/prometheus/templates/server/rolebinding.yaml        |   20 [31m-[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/service.yaml |   60 [31m--[m
 .../charts/loki-stack/charts/prometheus/templates/server/serviceaccount.yaml     |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/sts.yaml  |  286 [31m------[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/vpa.yaml  |   24 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/values.yaml                | 1802 [31m--------------------------------------[m
 charts/loki-stack/charts/loki-stack/charts/promtail/.helmignore                  |   22 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/Chart.yaml                   |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/README.md                    |   90 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/NOTES.txt          |    3 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/_helpers.tpl       |   61 [31m--[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/clusterrole.yaml   |   20 [31m-[m
 .../charts/loki-stack/charts/promtail/templates/clusterrolebinding.yaml          |   19 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/configmap.yaml     |  267 [31m------[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/daemonset.yaml     |  129 [31m---[m
 .../charts/loki-stack/charts/promtail/templates/podsecuritypolicy.yaml           |   13 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/role.yaml          |   19 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/rolebinding.yaml   |   20 [31m-[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/service-headless.yaml |   22 [31m-[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/service-syslog.yaml   |   50 [31m--[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/serviceaccount.yaml   |   13 [31m-[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/servicemonitor.yaml   |   34 [31m-[m
 charts/loki-stack/charts/loki-stack/charts/promtail/values.yaml                  |  219 [31m-----[m
 charts/loki-stack/charts/loki-stack/requirements.lock                            |   24 [31m-[m
 charts/loki-stack/charts/loki-stack/requirements.yaml                            |   29 [31m-[m
 charts/loki-stack/charts/loki-stack/templates/NOTES.txt                          |    3 [31m-[m
 charts/loki-stack/charts/loki-stack/templates/_helpers.tpl                       |   58 [31m--[m
 charts/loki-stack/charts/loki-stack/templates/datasources.yaml                   |   31 [31m-[m
 charts/loki-stack/charts/loki-stack/templates/tests/loki-test-configmap.yaml     |   52 [31m--[m
 charts/loki-stack/charts/loki-stack/templates/tests/loki-test-pod.yaml           |   30 [31m-[m
 charts/loki-stack/charts/loki-stack/values.yaml                                  |   69 [31m--[m
 eks/README.adoc                                                                  |    4 [32m+[m[31m-[m
 kind/README.adoc                                                                 |    4 [32m+[m[31m-[m
 246 files changed, 20 insertions(+), 14673 deletions(-)

[33mcommit 47df2ead372f69d7203d2426689a51e58fcf448f[m[33m ([m[1;33mtag: v1.0.0-alpha.5[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Jan 30 16:56:45 2023 +0100

    chore(main): release 1.0.0-alpha.5 (#20)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 9e179988ee61eb15bcad6e5f92012438b779a4b5[m
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Mon Jan 30 16:55:21 2023 +0100

    feat(Azure): support Loki microservices setup (#18)
    
    * feat(Azure): add distributed Loki
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    ---------
    
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.5

 README.adoc                                        |  18 [32m++++++++[m[31m-[m
 aks/README.adoc                                    |  18 [32m++++++++[m[31m-[m
 aks/extra-variables.tf                             |   1 [32m+[m
 aks/locals.tf                                      |  73 [32m++++++++++++++++++++++[m[31m--------------[m
 aks/main.tf                                        |   2 [32m+[m
 charts/loki-microservice/Chart.yaml                |  14 [32m+++++++[m
 charts/loki-microservice/templates/datasource.yaml |  19 [32m++++++++++[m
 charts/loki-microservice/values.yaml               |   1 [32m+[m
 charts/loki-stack/values.yaml                      |   1 [31m-[m
 eks/README.adoc                                    |  18 [32m++++++++[m[31m-[m
 eks/main.tf                                        |   2 [32m+[m
 kind/README.adoc                                   |  18 [32m++++++++[m[31m-[m
 kind/main.tf                                       |   2 [32m+[m
 locals.tf                                          | 140 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 main.tf                                            |   2 [32m+[m[31m-[m
 variables.tf                                       |   6 [32m+++[m
 16 files changed, 295 insertions(+), 40 deletions(-)

[33mcommit 9f83e59e2af8f3bc8928a213738d283474a92277[m[33m ([m[1;33mtag: v1.0.0-alpha.4[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Mon Jan 30 14:11:35 2023 +0100

    chore(main): release 1.0.0-alpha.4 (#19)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 1ddf02b9a0f492cc9f66d23567c3cfeebf7546d4[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Mon Jan 30 14:09:59 2023 +0100

    feat: add variable to configure sync on the application resource (#17)
    
    * feat: add variable to configure sync on the application resource
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * feat: add dependency on app_autosync and variable passthrough
    
    * fix: add tobool function
    
    ---------
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    Release-As: v1.0.0-alpha.4

 README.adoc      | 54 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 aks/README.adoc  | 54 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 aks/main.tf      |  1 [32m+[m
 eks/README.adoc  | 54 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 eks/main.tf      |  1 [32m+[m
 kind/README.adoc | 54 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 kind/main.tf     |  1 [32m+[m
 main.tf          | 13 [32m+++++++[m[31m------[m
 variables.tf     | 14 [32m++++++++++++++[m
 9 files changed, 232 insertions(+), 14 deletions(-)

[33mcommit d32437255804626820371e8eb167cdcde60573c7[m[33m ([m[1;33mtag: v1.0.0-alpha.3[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Dec 16 13:13:34 2022 +0100

    chore(main): release 1.0.0-alpha.3 (#16)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit dd0f1c6ae784bb49617ed7644d84aa6036854e0f[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Fri Dec 16 13:12:22 2022 +0100

    refactor: rename variables same as kube-prometheus-stack (#15)
    
    * refactor: rename variables same as kube-prometheus-stack
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * chore: terraform fmt
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.3

 README.adoc            |  4 [32m++[m[31m--[m
 aks/README.adoc        | 16 [32m++++++++[m[31m--------[m
 aks/extra-variables.tf |  6 [32m+++[m[31m---[m
 aks/locals.tf          |  4 [32m++[m[31m--[m
 eks/README.adoc        |  4 [32m++[m[31m--[m
 kind/README.adoc       |  4 [32m++[m[31m--[m
 kind/versions.tf       |  1 [32m+[m
 7 files changed, 20 insertions(+), 19 deletions(-)

[33mcommit eee69b450ec51567b6a1b751bf8f6186b19b13ba[m[33m ([m[1;33mtag: v1.0.0-alpha.2[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Dec 9 13:24:37 2022 +0100

    chore(main): release 1.0.0-alpha.2 (#14)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 7 [32m+++++++[m
 variables.tf | 2 [32m+[m[31m-[m
 version.txt  | 2 [32m+[m[31m-[m
 3 files changed, 9 insertions(+), 2 deletions(-)

[33mcommit 4661e918d05b1b0c268e5b3b59cce7804962ae64[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Fri Dec 9 13:23:39 2022 +0100

    feat: remove bucket creation from inside the module and refactor k3s/kind variant (#13)
    
    * feat: pass values to HCL structures
    
    * docs: better comments and terraform fmt
    
    * feat(eks): remove bucket creation from inside the module
    
    * feat(aks): remove bucket creation from inside the module
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * feat: use proper Terraform variables
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * feat: revamp k3s variant
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * fix: give the variable the same name everywhere
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * fix: add variable that is not related to the storage
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * refactor(kind): rename variant folder
    
    * fix: turn variables into sensitive
    
    * refactor: rename local to locals.tf
    
    * revert: "fix: turn variables into sensitive"
    
    This reverts commit 065104b64c1751c9612d32c5df15b877b30bacb3.
    
    * ci: fix variants variable
    
    * chore: delete useless resource group
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    * chore: set missing default values of standard variables
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    Co-authored-by: modridi <mohamed-amine.dridi@camptocamp.com>
    Co-authored-by: modridi <modridi@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.2

 .github/workflows/terraform-docs.yaml |   2 [32m+[m[31m-[m
 README.adoc                           |  37 [32m++++++++++++[m[31m----------[m
 aks/README.adoc                       | 139 [32m+++++++++++++++++++++++++++++++[m[31m---------------------------------------------------[m
 aks/extra-variables.tf                |  22 [32m+++++[m[31m--------[m
 aks/{local.tf => locals.tf}           |   6 [32m++[m[31m--[m
 aks/main.tf                           |  32 [32m++[m[31m-----------------[m
 aks/outputs.tf                        |   3 [32m+[m[31m-[m
 charts/loki-stack/values.yaml         |  18 [32m+[m[31m----------[m
 eks/README.adoc                       | 115 [32m+++++++++++++++++++++++++++++++[m[31m-------------------------------------[m
 eks/extra-variables.tf                |   9 [32m++++[m[31m--[m
 eks/{local.tf => locals.tf}           |  14 [32m++++[m[31m-----[m
 eks/main.tf                           |  56 [32m++[m[31m-------------------------------[m
 eks/outputs.tf                        |   3 [32m+[m[31m-[m
 k3s/extra-variables.tf                |   3 [31m--[m
 k3s/main.tf                           |  18 [31m-----------[m
 k3s/values.tmpl.yaml                  |  51 [31m------------------------------[m
 {k3s => kind}/README.adoc             |  70 [32m++++++++++++++++++++++++++++[m[31m-------------[m
 kind/extra-variables.tf               |   9 [32m++++++[m
 kind/locals.tf                        |  67 [32m++++++++++++++++++++++++++++++++++++++++[m
 kind/main.tf                          |  12 [32m+++++++[m
 {k3s => kind}/outputs.tf              |   0
 {k3s => kind}/variables.tf            |   0
 local.tf                              |   3 [31m--[m
 locals.tf                             |  30 [32m++++++++++++++++++[m
 outputs.tf                            |   3 [32m+[m[31m-[m
 variables.tf                          |  14 [32m+++++[m[31m----[m
 26 files changed, 338 insertions(+), 398 deletions(-)

[33mcommit 3873e6403f826e88ec18113b6ec18d535b623ccd[m[33m ([m[1;33mtag: v1.0.0-alpha.1[m[33m)[m
Author: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>
Date:   Fri Nov 18 13:32:56 2022 +0100

    chore(main): release 1.0.0-alpha.1 (#12)
    
    Co-authored-by: github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>

 CHANGELOG.md | 37 [32m+++++++++++++++++++++++++++++++++++++[m
 variables.tf |  2 [32m+[m[31m-[m
 version.txt  |  2 [32m+[m[31m-[m
 3 files changed, 39 insertions(+), 2 deletions(-)

[33mcommit 1cb7d55c5a8ae86b6f5fc147ec8d2e5aaca2758d[m
Author: Gonçalo Heleno <33546359+lentidas@users.noreply.github.com>
Date:   Fri Nov 18 13:31:54 2022 +0100

    ci: add central workflows including release-please (#11)
    
    * chore: add CODEOWNERS file
    
    * ci: add terraform-docs and linters workflows
    
    * ci: add release-please workflow and associated modifications
    
    * docs(terraform-docs): generate docs and write to README.adoc
    
    Co-authored-by: lentidas <lentidas@users.noreply.github.com>
    
    Release-As: v1.0.0-alpha.1

 .github/workflows/linters.yaml        |   9 [32m++++[m
 .github/workflows/release-please.yaml |  11 [32m++++[m
 .github/workflows/terraform-docs.yaml |  11 [32m++++[m
 CODEOWNERS                            |   1 [32m+[m
 README.adoc                           | 177 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 aks/README.adoc                       | 228 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 eks/README.adoc                       | 202 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 k3s/README.adoc                       | 169 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 main.tf                               |   2 [32m+[m[31m-[m
 variables.tf                          |   6 [32m+++[m
 version.txt                           |   1 [32m+[m
 11 files changed, 816 insertions(+), 1 deletion(-)

[33mcommit 11223d449af61a20c443c36525c82423ff199154[m
Merge: e7a5976 a144615
Author: Jeremy Barascut <jbarascut@users.noreply.github.com>
Date:   Thu Oct 27 09:34:15 2022 +0200

    Merge pull request #10 from camptocamp/fix_version_path
    
    fix(version): add version symlink in cloud folder

[33mcommit a1446157fa3a60b921c4e7da2d2bdfb3e1b82656[m
Author: Jérémy Barascut <jeremy.barascut@camptocamp.com>
Date:   Wed Oct 26 10:42:00 2022 +0200

    fix(version): add version symlink in cloud folder

 aks/versions.tf | 1 [32m+[m
 eks/versions.tf | 1 [32m+[m
 2 files changed, 2 insertions(+)

[33mcommit e7a59760b5798255c09a6fc0bbd57329aea6e498[m
Author: Christian Kaenzig <christian.kaenzig@camptocamp.com>
Date:   Fri May 6 11:44:58 2022 +0200

    fix(eks): helm values syntax (#9)

 eks/local.tf | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit 96d5b9b966f229e59ecfd876fbf5c9b76bf9bbde[m
Author: Christian Kaenzig <christian.kaenzig@camptocamp.com>
Date:   Thu May 5 16:26:06 2022 +0200

    refactor(eks): yaml values replaced with hcl structure (#7)

 eks/local.tf         | 39 [32m+++++++++++++++++++++++++++++++++++++++[m
 eks/main.tf          |  7 [32m++[m[31m-----[m
 eks/values.tmpl.yaml | 26 [31m--------------------------[m
 3 files changed, 41 insertions(+), 31 deletions(-)

[33mcommit c9b9471baef7e54114bce15f1bae70f7a7a9bd6b[m
Merge: d777afb 9c50d4d
Author: Federico Sismondi <federico.sismondi@camptocamp.com>
Date:   Wed May 4 15:51:33 2022 +0200

    Merge pull request #8 from camptocamp/fix-values-eval-delay
    
    Do not delay Helm values data source evaluation

[33mcommit 9c50d4dd7bc1bdcfa02fb75ac32f2436e731d463[m
Author: John Doe <john.doe@camptocamp.com>
Date:   Mon May 2 11:38:44 2022 +0200

    fix: do not delay Helm values evaluation
    
    This is a dirty hack to work around a limitation of module dependencies
    which delays the evaluation of data sources.

 aks/local.tf   | 62 [32m+++++++++++++++++++++++++++++++[m[31m-------------------------------[m
 aks/main.tf    |  6 [32m+++[m[31m---[m
 aks/outputs.tf |  3 [32m+++[m
 eks/main.tf    |  2 [32m++[m
 eks/outputs.tf |  3 [32m+++[m
 k3s/main.tf    |  2 [32m++[m
 k3s/outputs.tf |  3 [32m+++[m
 main.tf        | 14 [32m++++++++++++++[m
 outputs.tf     |  3 [32m+++[m
 variables.tf   |  6 [32m++++++[m
 10 files changed, 70 insertions(+), 34 deletions(-)

[33mcommit d777afb05fbdd9af0ea3cca6a6dd678fc0d1222d[m
Merge: fc5d120 f82a246
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Wed Apr 13 06:54:51 2022 +0200

    Merge pull request #6 from camptocamp/fix-application
    
    fix: wait for app removel before deleting the project

[33mcommit f82a246ba4794b7177f559b35b52c57fb6a06213[m
Author: modridi <mohamed-amine.dridi@camptocamp.com>
Date:   Wed Apr 13 06:54:27 2022 +0200

    fix: wait for app removel before deleting the project

 main.tf | 2 [32m++[m
 1 file changed, 2 insertions(+)

[33mcommit fc5d12068f2dc38026481864df921e28d076d2b6[m
Merge: 55681a6 c6f4784
Author: Mohamed Amine Dridi <78367821+modridi@users.noreply.github.com>
Date:   Tue Apr 12 23:35:33 2022 +0200

    Merge pull request #5 from camptocamp/add-azure-module
    
    feat(azure): add module

[33mcommit c6f47844950f0e150f6912b7557ab9802a3c2a26[m
Author: modridi <mohamed-amine.dridi@camptocamp.com>
Date:   Tue Apr 12 23:35:13 2022 +0200

    feat(azure): add module

 aks/extra-variables.tf |  2 [32m+[m[31m-[m
 aks/local.tf           | 36 [32m++++++++++++++++++++++++++++++++++++[m
 aks/main.tf            |  7 [32m+[m[31m------[m
 aks/values.tmpl.yaml   | 24 [31m------------------------[m
 local.tf               |  4 [32m+[m[31m---[m
 main.tf                | 15 [32m++++++++++++[m[31m---[m
 outputs.tf             |  0
 values.tmpl.yaml       |  2 [31m--[m
 variables.tf           |  7 [32m++++[m[31m---[m
 9 files changed, 55 insertions(+), 42 deletions(-)

[33mcommit 55681a6da04758ae4bb66499da7574ac33410b9f[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 23 19:09:35 2022 +0100

    docs: fix module URL

 README.md | 6 [32m+++[m[31m---[m
 1 file changed, 3 insertions(+), 3 deletions(-)

[33mcommit a779522d9fb50f4abe34dd0bc751240f61b3909f[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 23 14:46:01 2022 +0100

    refactor!: move Terraform module at repository root

 {modules/aks => aks}/extra-variables.tf      | 0
 {modules/aks => aks}/main.tf                 | 0
 {modules/aks => aks}/values.tmpl.yaml        | 0
 {modules/aks => aks}/variables.tf            | 0
 {modules/eks => eks}/extra-variables.tf      | 0
 {modules/eks => eks}/main.tf                 | 0
 {modules/eks => eks}/values.tmpl.yaml        | 0
 {modules/eks => eks}/variables.tf            | 0
 {modules/k3s => k3s}/extra-variables.tf      | 0
 {modules/k3s => k3s}/main.tf                 | 0
 {modules/k3s => k3s}/values.tmpl.yaml        | 0
 {modules/k3s => k3s}/variables.tf            | 0
 modules/local.tf => local.tf                 | 0
 modules/main.tf => main.tf                   | 0
 modules/outputs.tf => outputs.tf             | 0
 modules/values.tmpl.yaml => values.tmpl.yaml | 0
 modules/variables.tf => variables.tf         | 0
 modules/versions.tf => versions.tf           | 0
 18 files changed, 0 insertions(+), 0 deletions(-)

[33mcommit f6ed6558212398fe03c93f701de4c847983dd31a[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 16 19:04:21 2022 +0100

    chore(helm): vendor dependencies

 charts/loki-stack/charts/loki-stack/.helmignore                                  |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/Chart.yaml                                   |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/README.md                                    |   60 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/.helmignore                  |    2 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/Chart.yaml                   |   12 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/Makefile                     |    1 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/README.md                    |  203 [32m+++++[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/default/Makefile    |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/default/README.md   |   27 [32m+[m
 .../loki-stack/charts/loki-stack/charts/filebeat/examples/default/test/goss.yaml |   47 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/Makefile        |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/README.md       |   27 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/test/goss.yaml  |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/oss/values.yaml     |    5 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/security/Makefile   |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/examples/security/README.md  |   28 [32m+[m
 .../charts/loki-stack/charts/filebeat/examples/security/test/goss.yaml           |    9 [32m+[m
 .../loki-stack/charts/loki-stack/charts/filebeat/examples/security/values.yaml   |   37 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/NOTES.txt          |    2 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/_helpers.tpl       |   32 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/clusterrole.yaml   |   22 [32m+[m
 .../charts/loki-stack/charts/filebeat/templates/clusterrolebinding.yaml          |   19 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/configmap.yaml     |   17 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/templates/daemonset.yaml     |  171 [32m++++[m
 .../loki-stack/charts/loki-stack/charts/filebeat/templates/serviceaccount.yaml   |   15 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/filebeat/values.yaml                  |  142 [32m+++[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/.helmignore                |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/Chart.yaml                 |   15 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/README.md                  |  126 [32m+++[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/NOTES.txt        |   11 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/_helpers.tpl     |   66 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/clusterrole.yaml |   17 [32m+[m
 .../charts/loki-stack/charts/fluent-bit/templates/clusterrolebinding.yaml        |   19 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/configmap.yaml   |   73 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/daemonset.yaml   |   80 [32m++[m
 .../charts/loki-stack/charts/fluent-bit/templates/podsecuritypolicy.yaml         |   34 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/role.yaml        |   19 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/templates/rolebinding.yaml |   19 [32m+[m
 .../charts/loki-stack/charts/fluent-bit/templates/service-headless.yaml          |   22 [32m+[m
 .../loki-stack/charts/loki-stack/charts/fluent-bit/templates/serviceaccount.yaml |   12 [32m+[m
 .../loki-stack/charts/loki-stack/charts/fluent-bit/templates/servicemonitor.yaml |   35 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/fluent-bit/values.yaml                |  120 [32m+++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/.helmignore                   |   23 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/Chart.yaml                    |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/README.md                     |  561 [32m++++++++++++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/ci/default-values.yaml        |    1 [32m+[m
 .../charts/loki-stack/charts/grafana/ci/with-dashboard-json-values.yaml          |   53 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/ci/with-dashboard-values.yaml |   19 [32m+[m
 .../charts/loki-stack/charts/grafana/ci/with-image-renderer-values.yaml          |   19 [32m+[m
 .../loki-stack/charts/loki-stack/charts/grafana/dashboards/custom-dashboard.json |    1 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/NOTES.txt           |   54 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/_helpers.tpl        |  163 [32m++++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/_pod.tpl            |  562 [32m++++++++++++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/clusterrole.yaml    |   25 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/clusterrolebinding.yaml           |   24 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/configmap-dashboard-provider.yaml |   29 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/configmap.yaml      |   82 [32m++[m
 .../charts/loki-stack/charts/grafana/templates/dashboards-json-configmap.yaml    |   35 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/deployment.yaml     |   50 [32m++[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/extra-manifests.yaml   |    4 [32m+[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/headless-service.yaml  |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/hpa.yaml            |   20 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/image-renderer-deployment.yaml    |  119 [32m+++[m
 .../loki-stack/charts/grafana/templates/image-renderer-network-policy.yaml       |   76 [32m++[m
 .../charts/loki-stack/charts/grafana/templates/image-renderer-service.yaml       |   30 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/ingress.yaml        |   78 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/networkpolicy.yaml  |   37 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/poddisruptionbudget.yaml          |   22 [32m+[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/podsecuritypolicy.yaml |   49 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/pvc.yaml            |   33 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/role.yaml           |   32 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/rolebinding.yaml    |   25 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/secret-env.yaml     |   14 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/secret.yaml         |   26 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/service.yaml        |   51 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/serviceaccount.yaml |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/servicemonitor.yaml |   43 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/statefulset.yaml    |   52 [32m++[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-configmap.yaml         |   17 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-podsecuritypolicy.yaml |   29 [32m+[m
 .../loki-stack/charts/loki-stack/charts/grafana/templates/tests/test-role.yaml   |   14 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-rolebinding.yaml       |   17 [32m+[m
 .../charts/loki-stack/charts/grafana/templates/tests/test-serviceaccount.yaml    |    9 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/templates/tests/test.yaml     |   48 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/grafana/values.yaml                   |  809 [32m+++++++++++++++++[m
 charts/loki-stack/charts/loki-stack/charts/logstash/.helmignore                  |    2 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/Chart.yaml                   |   12 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/Makefile                     |    1 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/README.md                    |  208 [32m+++++[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/default/Makefile    |   16 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/default/README.md   |   17 [32m+[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/default/test/goss.yaml |   43 [32m+[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/elasticsearch/Makefile |   17 [32m+[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/README.md           |   28 [32m+[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/test/goss.yaml      |   56 [32m++[m
 .../charts/loki-stack/charts/logstash/examples/elasticsearch/values.yaml         |   12 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/Makefile        |   16 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/README.md       |   17 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/test/goss.yaml  |   42 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/oss/values.yaml     |    2 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/security/Makefile   |   14 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/examples/security/README.md  |   28 [32m+[m
 .../charts/loki-stack/charts/logstash/examples/security/test/goss.yaml           |   64 [32m++[m
 .../loki-stack/charts/loki-stack/charts/logstash/examples/security/values.yaml   |   40 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/NOTES.txt          |    2 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/_helpers.tpl       |   31 [32m+[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/configmap-config.yaml |   17 [32m+[m
 .../charts/loki-stack/charts/logstash/templates/configmap-pipeline.yaml          |   17 [32m+[m
 .../charts/loki-stack/charts/logstash/templates/poddisruptionbudget.yaml         |   17 [32m+[m
 .../charts/loki-stack/charts/logstash/templates/podsecuritypolicy.yaml           |   14 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/role.yaml          |   25 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/rolebinding.yaml   |   24 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/secret.yaml        |   27 [32m+[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/service-headless.yaml |   23 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/service.yaml       |   23 [32m+[m
 .../loki-stack/charts/loki-stack/charts/logstash/templates/serviceaccount.yaml   |   20 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/logstash/templates/statefulset.yaml   |  200 [32m+++++[m
 charts/loki-stack/charts/loki-stack/charts/logstash/values.yaml                  |  248 [32m++++++[m
 charts/loki-stack/charts/loki-stack/charts/loki/.helmignore                      |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/Chart.yaml                       |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/README.md                        |   70 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/NOTES.txt              |    3 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/_helpers.tpl           |   75 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/configmap-alert.yaml   |   17 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/ingress.yaml           |   55 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/networkpolicy.yaml     |   26 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/pdb.yaml               |   17 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/podsecuritypolicy.yaml |   41 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/role.yaml              |   20 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/rolebinding.yaml       |   20 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/secret.yaml            |   14 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/service-headless.yaml  |   24 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/service.yaml           |   43 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/serviceaccount.yaml    |   16 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/servicemonitor.yaml    |   38 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/loki/templates/statefulset.yaml       |  150 [32m++++[m
 charts/loki-stack/charts/loki-stack/charts/loki/values.yaml                      |  281 [32m++++++[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/.helmignore                |   23 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/Chart.lock                 |    6 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/Chart.yaml                 |   30 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/README.md                  |  226 [32m+++++[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/.helmignore    |   21 [32m+[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/Chart.yaml     |   19 [32m+[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/OWNERS         |    6 [32m+[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/README.md      |   68 [32m++[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/NOTES.txt   |   10 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/_helpers.tpl           |   79 [32m++[m
 .../prometheus/charts/kube-state-metrics/templates/clusterrolebinding.yaml       |   20 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/deployment.yaml        |  148 [32m++++[m
 .../charts/prometheus/charts/kube-state-metrics/templates/kubeconfig-secret.yaml |   12 [32m+[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/pdb.yaml    |   14 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/podsecuritypolicy.yaml |   39 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/psp-clusterrole.yaml   |   19 [32m+[m
 .../prometheus/charts/kube-state-metrics/templates/psp-clusterrolebinding.yaml   |   16 [32m+[m
 .../loki-stack/charts/prometheus/charts/kube-state-metrics/templates/role.yaml   |  196 [32m+++++[m
 .../charts/prometheus/charts/kube-state-metrics/templates/rolebinding.yaml       |   24 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/service.yaml           |   35 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/serviceaccount.yaml    |   15 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/servicemonitor.yaml    |   43 [32m+[m
 .../charts/prometheus/charts/kube-state-metrics/templates/stsdiscovery-role.yaml |   26 [32m+[m
 .../prometheus/charts/kube-state-metrics/templates/stsdiscovery-rolebinding.yaml |   17 [32m+[m
 .../charts/loki-stack/charts/prometheus/charts/kube-state-metrics/values.yaml    |  216 [32m+++++[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/NOTES.txt        |  112 [32m+++[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/_helpers.tpl     |  282 [32m++++++[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/clusterrole.yaml  |   21 [32m+[m
 .../loki-stack/charts/prometheus/templates/alertmanager/clusterrolebinding.yaml  |   20 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/cm.yaml           |   19 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/deploy.yaml       |  172 [32m++++[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/headless-svc.yaml |   31 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/ingress.yaml      |   57 [32m++[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/netpol.yaml       |   20 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/pdb.yaml          |   14 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/psp.yaml          |   46 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/pvc.yaml          |   37 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/role.yaml         |   24 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/rolebinding.yaml  |   23 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/service.yaml      |   53 [32m++[m
 .../loki-stack/charts/prometheus/templates/alertmanager/serviceaccount.yaml      |   11 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/alertmanager/sts.yaml          |  181 [32m++++[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/daemonset.yaml   |  146 [32m+++[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/psp.yaml         |   55 [32m++[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/role.yaml        |   17 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/rolebinding.yaml |   19 [32m+[m
 .../loki-stack/charts/prometheus/templates/node-exporter/serviceaccount.yaml     |   11 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/node-exporter/svc.yaml         |   47 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/clusterrole.yaml   |   21 [32m+[m
 .../loki-stack/charts/prometheus/templates/pushgateway/clusterrolebinding.yaml   |   16 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/deploy.yaml        |  119 [32m+++[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/ingress.yaml       |   54 [32m++[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/netpol.yaml        |   20 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/pdb.yaml           |   14 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/psp.yaml           |   42 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/pvc.yaml           |   31 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/service.yaml       |   41 [32m+[m
 .../loki-stack/charts/prometheus/templates/pushgateway/serviceaccount.yaml       |   11 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/pushgateway/vpa.yaml           |   20 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/server/clusterrole.yaml        |   48 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/server/clusterrolebinding.yaml |   16 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/cm.yaml   |   82 [32m++[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/deploy.yaml  |  304 [32m+++++++[m
 .../charts/loki-stack/charts/prometheus/templates/server/headless-svc.yaml       |   37 [32m+[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/ingress.yaml |   59 [32m++[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/netpol.yaml  |   18 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/pdb.yaml  |   14 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/psp.yaml  |   51 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/pvc.yaml  |   39 [32m+[m
 .../charts/loki-stack/charts/prometheus/templates/server/rolebinding.yaml        |   20 [32m+[m
 .../loki-stack/charts/loki-stack/charts/prometheus/templates/server/service.yaml |   60 [32m++[m
 .../charts/loki-stack/charts/prometheus/templates/server/serviceaccount.yaml     |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/sts.yaml  |  286 [32m++++++[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/templates/server/vpa.yaml  |   24 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/prometheus/values.yaml                | 1802 [32m++++++++++++++++++++++++++++++++++++++[m
 charts/loki-stack/charts/loki-stack/charts/promtail/.helmignore                  |   22 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/Chart.yaml                   |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/README.md                    |   90 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/NOTES.txt          |    3 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/_helpers.tpl       |   61 [32m++[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/clusterrole.yaml   |   20 [32m+[m
 .../charts/loki-stack/charts/promtail/templates/clusterrolebinding.yaml          |   19 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/configmap.yaml     |  267 [32m++++++[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/daemonset.yaml     |  129 [32m+++[m
 .../charts/loki-stack/charts/promtail/templates/podsecuritypolicy.yaml           |   13 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/role.yaml          |   19 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/templates/rolebinding.yaml   |   20 [32m+[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/service-headless.yaml |   22 [32m+[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/service-syslog.yaml   |   50 [32m++[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/serviceaccount.yaml   |   13 [32m+[m
 .../loki-stack/charts/loki-stack/charts/promtail/templates/servicemonitor.yaml   |   34 [32m+[m
 charts/loki-stack/charts/loki-stack/charts/promtail/values.yaml                  |  219 [32m+++++[m
 charts/loki-stack/charts/loki-stack/requirements.lock                            |   24 [32m+[m
 charts/loki-stack/charts/loki-stack/requirements.yaml                            |   29 [32m+[m
 charts/loki-stack/charts/loki-stack/templates/NOTES.txt                          |    3 [32m+[m
 charts/loki-stack/charts/loki-stack/templates/_helpers.tpl                       |   58 [32m++[m
 charts/loki-stack/charts/loki-stack/templates/datasources.yaml                   |   31 [32m+[m
 charts/loki-stack/charts/loki-stack/templates/tests/loki-test-configmap.yaml     |   52 [32m++[m
 charts/loki-stack/charts/loki-stack/templates/tests/loki-test-pod.yaml           |   30 [32m+[m
 charts/loki-stack/charts/loki-stack/values.yaml                                  |   69 [32m++[m
 237 files changed, 14662 insertions(+)

[33mcommit 3a4a0e5cfc22832fa8aa7caf43e4b2c3e468ff8f[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 16 19:04:04 2022 +0100

    chore(helm): upgrade dependencies

 charts/loki-stack/Chart.lock | 6 [32m++++++[m
 charts/loki-stack/Chart.yaml | 2 [32m+[m[31m-[m
 2 files changed, 7 insertions(+), 1 deletion(-)

[33mcommit a94c8575b4a5f5dfabf19e06f5c2b23e768e00c3[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 16 18:35:59 2022 +0100

    chore: use cluster symbolic name in Argo CD project and application destination

 modules/main.tf | 4 [32m++[m[31m--[m
 1 file changed, 2 insertions(+), 2 deletions(-)

[33mcommit 228c7f4dd4cff32f3800950a561ab1f30c1d51d9[m
Author: Yann Soubeyrand <yann.soubeyrand@camptocamp.com>
Date:   Wed Feb 16 18:35:59 2022 +0100

    style: format

 modules/eks/main.tf | 2 [32m+[m[31m-[m
 modules/k3s/main.tf | 2 [32m+[m[31m-[m
 modules/local.tf    | 4 [32m++[m[31m--[m
 modules/main.tf     | 6 [32m+++[m[31m---[m
 4 files changed, 7 insertions(+), 7 deletions(-)

[33mcommit 75336fa4c553bc3252b6919ba27877597708d3f9[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Feb 8 15:15:27 2022 +0100

    Revert "refactor!: use var.cluster_info"
    
    This reverts commit c581b5c3d40f16d8f9e356c731557d30b30fd837.

 README.md                    |  8 [32m++++++[m[31m--[m
 modules/aks/main.tf          |  4 [32m+++[m[31m-[m
 modules/eks/main.tf          |  4 [32m+++[m[31m-[m
 modules/k3s/main.tf          |  7 [32m+++++[m[31m--[m
 modules/k3s/values.tmpl.yaml |  2 [32m+[m[31m-[m
 modules/local.tf             |  3 [32m++[m[31m-[m
 modules/main.tf              |  7 [32m+++++[m[31m--[m
 modules/variables.tf         | 16 [32m++++++++++[m[31m------[m
 8 files changed, 35 insertions(+), 16 deletions(-)

[33mcommit 5a0d660a508101093a1ed771b5bfffbae7551c98[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Feb 1 10:17:49 2022 +0100

    fix: README

 README.md | 8 [32m++[m[31m------[m
 1 file changed, 2 insertions(+), 6 deletions(-)

[33mcommit e2eb7381e016cbe319401d1696d06923f8530be0[m
Merge: cfa1949 c581b5c
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Feb 1 04:12:11 2022 -0500

    Merge pull request #3 from camptocamp/cluster_info
    
    refactor!: use var.cluster_info

[33mcommit c581b5c3d40f16d8f9e356c731557d30b30fd837[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Feb 1 09:48:06 2022 +0100

    refactor!: use var.cluster_info
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 modules/aks/main.tf          |  4 [32m+[m[31m---[m
 modules/eks/main.tf          |  4 [32m+[m[31m---[m
 modules/k3s/main.tf          |  7 [32m++[m[31m-----[m
 modules/k3s/values.tmpl.yaml |  2 [32m+[m[31m-[m
 modules/local.tf             |  3 [32m+[m[31m--[m
 modules/main.tf              |  7 [32m++[m[31m-----[m
 modules/variables.tf         | 16 [32m++++++[m[31m----------[m
 7 files changed, 14 insertions(+), 29 deletions(-)

[33mcommit cfa1949a67228eb386be18e17062152f28af7574[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Mon Jan 31 18:59:30 2022 +0100

    refactor: use values.tmpl.yaml and expose extra_yaml
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 modules/aks/main.tf                                 | 5 [32m++[m[31m---[m
 modules/aks/{values.yaml => values.tmpl.yaml}       | 0
 modules/eks/main.tf                                 | 5 [32m++[m[31m---[m
 modules/eks/{values.yaml => values.tmpl.yaml}       | 0
 modules/extra_variables.tf                          | 4 [31m----[m
 modules/k3s/main.tf                                 | 5 [32m++[m[31m---[m
 modules/k3s/{values.yaml => values.tmpl.yaml}       | 0
 modules/local.tf                                    | 4 [32m++[m[31m--[m
 modules/{profiles/default.yaml => values.tmpl.yaml} | 0
 modules/variables.tf                                | 4 [32m++[m[31m--[m
 10 files changed, 10 insertions(+), 17 deletions(-)

[33mcommit 651cd349f9ccf1e7d7a6c1027371fd39c74c913f[m
Author: modridi <mohamed-amine.dridi@camptocamp.com>
Date:   Wed Jan 26 15:25:16 2022 +0100

    chore: migrate loki-stack

 modules/aks/extra-variables.tf | 16 [32m++++++++++++++++[m
 modules/aks/main.tf            | 24 [32m+++++++++++++++++++[m[31m-----[m
 2 files changed, 35 insertions(+), 5 deletions(-)

[33mcommit 3dfb2789af11c09b4c15eff7f199c83d9cfbc62e[m
Author: Federico Sismondi <federico.sismondi@camptocamp.com>
Date:   Wed Jan 26 17:20:13 2022 +0100

    fix: variables.tf changed to symbolic link of upper level

 modules/aks/variables.tf | 30 [32m+[m[31m-----------------------------[m
 modules/eks/variables.tf | 30 [32m+[m[31m-----------------------------[m
 modules/k3s/variables.tf | 30 [32m+[m[31m-----------------------------[m
 3 files changed, 3 insertions(+), 87 deletions(-)

[33mcommit 3be077b5ee7fda8404b0a0c356f26bc4858f7c98[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Wed Jan 19 12:22:23 2022 -0500

    Update README.md

 README.md | 61 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m[31m-[m
 1 file changed, 60 insertions(+), 1 deletion(-)

[33mcommit 5f42fdce037e1aff92024c8e8d52accc991fbe36[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Jan 18 14:53:53 2022 -0500

    fix(eks): fix aws_region name
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 modules/eks/main.tf | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit 4c8c093bce29242306d4caf1ca12d6c30010e64b[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Tue Jan 18 14:51:53 2022 -0500

    fix(eks): use cluster_name instead of cluster_id
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 modules/eks/main.tf | 2 [32m+[m[31m-[m
 1 file changed, 1 insertion(+), 1 deletion(-)

[33mcommit 1185ce7b7181b65296650dcf5564eb11eace9ddb[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Mon Jan 17 14:23:38 2022 -0500

    fix: var.minio
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 modules/k3s/main.tf | 4 [32m++[m[31m--[m
 1 file changed, 2 insertions(+), 2 deletions(-)

[33mcommit f41b51246c1f59f7141b72b0e9146b016f0e95e7[m
Author: Raphaël Pinson <raphael.pinson@camptocamp.com>
Date:   Wed Jan 12 07:10:34 2022 -0500

    Init
    
    Signed-off-by: Raphaël Pinson <raphael.pinson@camptocamp.com>

 charts/loki-stack/Chart.yaml                | 11 [32m+++++++++++[m
 charts/loki-stack/templates/podmonitor.yaml | 17 [32m+++++++++++++++++[m
 charts/loki-stack/values.yaml               | 18 [32m++++++++++++++++++[m
 modules/aks/extra-variables.tf              |  0
 modules/aks/main.tf                         | 30 [32m++++++++++++++++++++++++++++++[m
 modules/aks/values.yaml                     | 24 [32m++++++++++++++++++++++++[m
 modules/aks/variables.tf                    | 29 [32m+++++++++++++++++++++++++++++[m
 modules/eks/extra-variables.tf              |  3 [32m+++[m
 modules/eks/main.tf                         | 64 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 modules/eks/values.yaml                     | 26 [32m++++++++++++++++++++++++++[m
 modules/eks/variables.tf                    | 29 [32m+++++++++++++++++++++++++++++[m
 modules/extra_variables.tf                  |  4 [32m++++[m
 modules/k3s/extra-variables.tf              |  3 [32m+++[m
 modules/k3s/main.tf                         | 17 [32m+++++++++++++++++[m
 modules/k3s/values.yaml                     | 51 [32m+++++++++++++++++++++++++++++++++++++++++++++++++++[m
 modules/k3s/variables.tf                    | 29 [32m+++++++++++++++++++++++++++++[m
 modules/local.tf                            |  5 [32m+++++[m
 modules/main.tf                             | 68 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 modules/outputs.tf                          |  0
 modules/profiles/default.yaml               |  2 [32m++[m
 modules/variables.tf                        | 29 [32m+++++++++++++++++++++++++++++[m
 modules/versions.tf                         | 10 [32m++++++++++[m
 22 files changed, 469 insertions(+)

[33mcommit 5e045db97ddf2bf216ff5322c5c2c2d33372a300[m
Author: Raphaël Pinson <github+aem1eeshi1@raphink.net>
Date:   Wed Jan 12 06:59:53 2022 -0500

    Initial commit

 LICENSE   | 201 [32m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++[m
 README.md |   1 [32m+[m
 2 files changed, 202 insertions(+)
