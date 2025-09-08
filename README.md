# HmAssemblyNGen

![HmAssemblyNGen v1.1.3](https://img.shields.io/badge/HmAssemblyNGen-v1.1.3-6479ff.svg)
[![CC0](https://img.shields.io/badge/license-CC0-blue.svg?style=flat)](LICENSE)
![.NET Framework 4.x](https://img.shields.io/badge/.NET_Framework-4.x-6479ff.svg?logo=windows&logoColor=white)

秀丸ディレクトリ下の「.NET Framework 4.x」系の「*.dll 」に対して、NGenする。

## 概要

`HmAssemblyNGen`は、高機能テキストエディタ「秀丸」の.NET Frameworkで開発されたDLLに対して、ネイティブイメージ生成（`NGEN`）を実行するためのツールです。

秀丸の一部の機能（*.dll）は.NET Frameworkを利用しており、PC環境によっては起動や動作が遅くなることがあります。このツールは、それらのDLLをあらかじめネイティブコードにコンパイル（ネイティブイメージ化）しておくことで、パフォーマンスの向上を図ります。

### 主な機能

- **NGENの自動実行**: 秀丸のインストールディレクトリに含まれる.NETアセンブリ（DLL）を対象に、NGEN処理を自動で行います。
- **32bit/64bit版の自動判別**: `HmAppBitChecker.exe` を利用して、現在インストールされている秀丸が32bit版か64bit版かを自動で判別します。これにより、環境に応じた適切なバージョンのNGENが実行され、ユーザーはビット数を意識する必要がありません。

### 構成物

- **`HmAssemblyNGen.bat`**: メインとなるバッチファイルです。秀丸のビット数を判別し、NGENコマンドを実行します。
- **`HmAppBitChecker.exe`**: 実行ファイル（.exe, .dll）のビット数を判定する補助ツールです。
- **`HmAssemblyNGen.zip`**: バッチファイルのソースコード（自己解凍書庫などに利用）です。

---

[https://秀丸マクロ.net/?page=nobu_tool_hm_assembly_ngen](https://秀丸マクロ.net/?page=nobu_tool_hm_assembly_ngen)

HmAppBitChecker.exe のリポジトリはこちら  

https://github.com/komiyamma/hm_app_bitchecker