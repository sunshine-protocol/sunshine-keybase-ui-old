class Device {
  const Device({
    this.id,
    this.currentDevice = false,
  });
  final String id;
  final bool currentDevice;

  bool get isCurrentDevice => currentDevice;
}
