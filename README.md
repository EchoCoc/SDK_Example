# SDK_Example
一个简单的.framework的静态库案例

1. command shift N 创建一个Framework
2. Build settings -> Mach-O type选择静态库为Static Library，Dynamic Library为动态库
3. Build Settings 中Dead Code Stripping设置为NO（默认是YES）
4. Build Settings 中Link With Standard Libraries 设置为NO
5. Build Settings 中Strip Style 设置为Non-Global Symbols

lipo -info：查看库中支持的架构  
lipo -create + (模拟器架构)路径+ (真机架构)路径 -output 输出目录：合并库  
lipo -remove 移除对架构名称(例：x86_64) sdk路径 -output 输出路径：移除库  
