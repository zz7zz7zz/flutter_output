class ServiceArrayAnnotation{

  final List<ServiceInfo> bindServiceArray;

  const ServiceArrayAnnotation(this.bindServiceArray);

}

class ServiceInfo{

  final String sName;
  final String pkg;
  final String implClass;

  const ServiceInfo(this.sName, this.pkg, this.implClass);
}