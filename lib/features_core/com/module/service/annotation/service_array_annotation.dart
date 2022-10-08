class ServiceArrayAnnotation {
  final String baseServicePkg;

  final List<ServiceInfo> bindServiceArray;

  const ServiceArrayAnnotation(this.baseServicePkg, this.bindServiceArray);
}

class ServiceInfo {
  final String sName;
  final String pkg;
  final String implClass;

  const ServiceInfo(this.sName, this.pkg, this.implClass);

  @override
  String toString() {
    return 'ServiceInfo{sName: $sName, pkg: $pkg, implClass: $implClass}';
  }
}
