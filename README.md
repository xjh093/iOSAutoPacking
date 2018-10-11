# iOSAutoPacking
iOSAutoPacking shell & 自动打包脚本

## Steps:

### 1.Open terminal
##### 1.1 input: ``` sh ``` and press 'space' key.
##### 1.2 drag 'iOSAutoPacking.sh' into terminal.

### 2.Input file path
 ##### 2.1 Find the file ends with .app in 'Products' of your project.
 ##### 2.2 Show in Finder.
 ##### 2.3 Drag it into terminal.

### 3.Wait

### 4.Find the 'xxx.ipa' file

---

## 步骤：

### 1.打开终端
##### 1.1 输入: ``` sh ``` 和一个空格。

##### 1.2 把文件 'iOSAutoPacking.sh' 拖入终端。

### 2.输入打包文件路径

##### 2.1 在项目的'Products'文件夹中找到以.app结尾的文件。
##### 2.2 Show in Finder。
##### 2.3 拖入终端。

### 3.等待

### 4.找到以 'xxx.ipa' 的文件

---

# Command+B With Script

Build Phases -> New Run Script Phases

```
if [ "${CONFIGURATION}" = "Debug" ] && [ -d "${BUILD_ROOT}/${CONFIGURATION}-iphoneos" ]
then
cd ${BUILD_ROOT}/${CONFIGURATION}-iphoneos
rm -rf Output
mkdir Payload
mkdir Output
cp -rf ${PROJECT_NAME}.app Payload/${PROJECT_NAME}.app
zip -r Output/${PROJECT_NAME}.ipa Payload
rm -rf Payload
cp -rf ${PROJECT_NAME}.app.dSYM Output/${PROJECT_NAME}.app.dSYM
rm -rf ${PROJECT_NAME}.app.dSYM
open ./Output
fi
```
