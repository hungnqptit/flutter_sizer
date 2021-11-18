part of sizer;

extension SizerExt on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get hp => this * SizerUtil.height / 100;

  double get s => (SizerUtil.deviceType == DeviceType.tablet
      ? this * SizerUtil.width / 810
      : this * SizerUtil.width / (Platform.isIOS ? 375 : 400));

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get wp => this * SizerUtil.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get fs => this * (SizerUtil.width / 3) / 100;
}
