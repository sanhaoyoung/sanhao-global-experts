#!/bin/bash
# 一键把本目录推到 GitHub —— 用法: ./push-to-github.sh <你的GitHub用户名>
# 前提: 先在 https://github.com/new 建一个空仓库，名字填 sanhao-global-experts（不要勾选 README 初始化）
USERNAME="$1"
if [ -z "$USERNAME" ]; then
  echo "用法: ./push-to-github.sh <GitHub用户名>"
  exit 1
fi
cd "$(dirname "$0")"
# 防首次使用 git 未配置身份导致 commit 失败（只影响本仓库，不改全局）
git config user.name  >/dev/null 2>&1 || git config user.name  "sanhaoyoung"
git config user.email >/dev/null 2>&1 || git config user.email "454157727@qq.com"
git init -b main 2>/dev/null
git add -A
git commit -m "SanHao Global Experts - 885 paid A2A/MCP skills (x402 USDC on Base)" 2>/dev/null || echo "(无新改动)"
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$USERNAME/sanhao-global-experts.git"
echo "推送到 https://github.com/$USERNAME/sanhao-global-experts ..."
git push -u origin main && echo "✔ 推送成功！仓库地址: https://github.com/$USERNAME/sanhao-global-experts"
