#!/bin/bash
set -e

APP_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[1/3] 安装编译和 Qt 依赖"
"$APP_DIR/install_deps_ubuntu.sh"

echo "[2/3] 编译数据分析工具"
"$APP_DIR/build_release.sh"

echo "[3/3] 安装应用菜单和桌面快捷方式"
"$APP_DIR/install_desktop.sh"

echo
echo "安装完成。现在可在应用菜单搜索“数据分析”，或双击桌面图标启动。"
