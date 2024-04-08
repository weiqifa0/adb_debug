@echo off
SETLOCAL EnableDelayedExpansion

:: 定义adb的安装路径，替换下面的路径为你的adb实际路径
SET ADB_PATH="C:\adb_debug\"

:: 检查adb路径是否存在
IF NOT EXIST "%ADB_PATH%\adb.exe" (
    ECHO adb.exe not found at "%ADB_PATH%"
    PAUSE
    EXIT /B 1
)

:: 获取当前用户的PATH环境变量
SETX PATH "%PATH%;%ADB_PATH%" /M

:: 输出结果
ECHO ADB has been added to the system PATH.
PAUSE