# SDK_Example
一个简单的.framework的静态库案例

## .framework静态库创建
1. command shift N 创建一个Framework
2. Build settings -> Mach-O type选择静态库为Static Library，Dynamic Library为动态库
3. Build Settings 中Dead Code Stripping设置为NO（默认是YES）
4. Build Settings 中Link With Standard Libraries 设置为NO
5. Build Settings 中Strip Style 设置为Non-Global Symbols

lipo -info：查看库中支持的架构  
lipo -create + (模拟器架构)路径+ (真机架构)路径 -output 输出目录：合并    
lipo -remove 移除对架构名称(例：x86_64) sdk路径 -output 输出路径：移除架构  

## 关于添加资源文件
1. File->New->Target->MacOS中选择bundle
2. Build settings 中Base SDK修改为iOS
3. 删除info.plist
4. Building settings 中COMBINE_HIDPI_IMAGES设置为NO，默认配置（YES）下会被转化为.tiff格式
5. Building settings 中Versioning System设置为None，默认Xcode会通过agvtool生成对应的版本信息，并打包进bundle文件，这回导致app提交报错
6. Building settings 中Installation Directiotory删除后面的路径
7. Building settings 中Skip Install设置为NO
8. Building settings 中Strip Debug Symbols During Copy选项，把Release模式设为YES

图片资源直接拉到bundle对应的文件夹下，单独对bundle进行编译
