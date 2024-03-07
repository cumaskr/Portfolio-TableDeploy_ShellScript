#!/bin/sh
echo "[ShellScript] Stop Service"
sudo systemctl stop APIServer.service
echo "[ShellScript] Git Pull"
cd ../Portfolio-TableDeploy_Server
sudo git pull
echo "[ShellScript] Project Build"
sudo dotnet build APIServer.csproj
echo "[ShellScript] Start Service"
sudo systemctl start APIServer.service
echo "[ShellScript] Complete"