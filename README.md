# flutter_output

flutter app framework

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



##条件编译处理

a.模块配置文件（如dart配置文件）
    1.使用注解处理（参数里含有所有的配置） =》service_manager.g.dart
    2.使用注解处理（参数引入另外一个配置文件）=》service_manager.g.dart
    3.直接通过脚本生成全集（service_manager.all.dart）的子集文件（service_manager.g.dart），不需要的进行注释

b.模块依赖文件（pubspec.yaml文件）
    1.直接通过脚本生成全集（pubspec.all.yaml）的子集文件（pubspec.yaml），不需要的进行注释

c.多余的资源（dart、resource如图片）
     1.

//到时候会使用dart改写
