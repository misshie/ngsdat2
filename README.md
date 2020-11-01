# NGSDAT2
## 次世代シークエンサー DRY解析教本 改訂第２版
[公式ページ](https://gakken-mesh.jp/book/detail/9784780909838.html)

### 正誤表
大変ご迷惑おかけしました。以下訂正いたします。

GitHubの[issue (openおよびclosedの質問・回答・修正）](https://github.com/misshie/ngsdat2/issues?q=is%3Aissue) もご参照ください

1. p.68 14行目  
誤 `$ 040_run-sra-fastq-dump.sh`  
正 `$ ./040_run-sra-fastq-dump.sh`  

1. スクリプト `DiseaseGenomeMain/240_convert_35KJPNv2-indel.sh`と`DiseaseGenomeMain/310_run-table-annovar.sh`の修正点についてPull Requestいただきましたのでmergeしました。

### 疾患ゲノム解析ver.2／コマンドラインの使い方 サポート情報

1. [DiseaseGenomeMain](https://github.com/misshie/ngsdat2/tree/master/DiseaseGenomeMain)  疾患ゲノム解析２ 本編スクリプト群
1. [DiseaseGenomeValidation](https://github.com/misshie/ngsdat2/tree/master/DiseaseGenomeValidation) 疾患ゲノム解析２ 検証編スクリプト群
1. [CommandLineHowTo](https://github.com/misshie/ngsdat2/tree/master/CommandLineHowTo) コマンドラインの使い方 スクリプト群

### 質問・コメントなど
- Twitter ハッシュタグ `#NGS_DAT` をつけてツイートしてください。他の方の質問もみられますのでおすすめします。
- GitHubの[issueページ](https://github.com/misshie/ngsdat2/issues) 経由でのコメントやプルリクエストも歓迎いたします。なお、`Filters`を空欄にして検索すると、過去の解決済みissueも表示されます。
- 直接のメールなどは、質問内容の共有がむずかしいので最後の手段にしていただけると助かります。

### サポートページ群へのリンク

各章の著者のみなさんによるサポートページへのリンクです

| 項目 | URL |
| --- | --- |
| ■Level 1（準備編）| |
|コマンドラインの使い方| https://github.com/misshie/ngsdat2 |
| ■Level 2（実践編）| |
| 0 から始める疾患ゲノム解析 ver2 |  https://github.com/misshie/ngsdat2 |
| 0 から始める発現解析 ver2 | https://github.com/RolyPolyCoily/NGSv2 |
| 0 から始めるエピゲノム解析（ChIP-seq）ver2 | https://github.com/yuifu/ngsdat2_epigenome_chipseq |
| 0 から始めるエピゲノム解析（BS-seq）ver2 | https://github.com/kono04/NGSv2_BS-seq |
| 0 から始めるメタゲノム解析 | https://github.com/youyuh48/NGSDRY2/ |
| 0 から始めるバクテリアゲノム解析 | https://github.com/nigyta/bact_genome |
| 0 から始める動物ゲノムアセンブリ | https://gist.github.com/gaou/5035b2aae9978dfc00c55cb10736e272 |
| 0 から始めるトランスクリプトームアセンブル解析 | https://github.com/bonohu/denovoTA |
| CWL（Common Workflow Language）があれば，DRY解析はもう怖くない | https://github.com/pitagora-network/DAT2-cwl |
| ■Level 3（応用編）| |
| ゲノムブラウザー風の可視化を R の基本作図関数を組み合わせて実現する | https://github.com/cb-yokoyama/DRYbook |
| シングルセル RNA-seq で擬時間に対する発現量変動をクラスタリングし，クラスターごとの平均と代表的な遺伝子の発現量を可視化する| https://github.com/yuifu/tutorial-RamDA-paper-fugures/ |
| 臨床検査値と疾患の遺伝的相関（genetic correlation）ネットワーク図 | https://github.com/mkanai/ldsc-corrplot-rg |
| メンデルランダム化解析（Mendelian randomization）に基づく臨床検査値と疾患の因果関係の可視化 | https://github.com/mkanai/mr-forestplot |
| 等高線散布図による DNA メチル化の比較 | https://github.com/KenShirane/PGCLC_methylome |
| 公共データベースに登録された NGS データの分布を可視化する | https://github.com/inutano/sra-quanto/ |
| メタ 16S シーケンスの各サンプルから得られたリード数の分布を生物分類ごとに可視化する | https://github.com/inutano/ohanami-project-manuscript/ |
| メタ 16S シーケンスリードの BLAST 結果を用いて，サンプル間で共通して存在する生物種を可視化する | https://github.com/inutano/ohanami-project-manuscript/ |
| 特定の GO term がアノテーションされた遺伝子群の発現差の可視化 | https://github.com/khirota-kyt/dry_analysis |
| LocusZoom プロット：連鎖不平衡情報とともにゲノムワイド関連解析のシグナルを可視化する | https://github.com/hacchy1983/sample-code-for-LocusZoom-plot |
| 遺伝子近傍の DNA メチル化レベルを可視化する | https://github.com/sin-ttk/DNA-methylome-CellRep |
| 58 形質のゲノムワイド関連解析結果とその多面的作用（pleiotropy）の可視化 | https://github.com/mkanai/fujiplot |
| 複数の染色体配列間の相同性を可視化する | https://github.com/ya-sainthood/chromosome_comparison |
| メタ 16S シークエンスの各サンプルから得られた細菌叢組成の差を主座標分析・クラスター分析により可視化する | https://github.com/youyuh48/NGSDRY2/ |

## License
MIT License. Written by MISHIMA, Hiroyuki.
