class Device {
  Device({
    this.id,
    this.currentDevice,
  });
  final String id;
  bool currentDevice;

  bool get isCurrentDevice => currentDevice;
}
