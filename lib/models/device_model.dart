class Device {
  const Device({
    this.id,
    this.currentDevice,
  });
  final String id;
  final bool currentDevice;

  bool get isCurrentDevice => currentDevice;
}
