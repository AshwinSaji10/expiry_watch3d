class Items {
  final String id;
  final String? name;
  final String? expiryDate;
  final String? aiStatus;
  final String? model3dLocation;

  Items({
    required this.id,
    required this.name,
    required this.expiryDate,
    this.aiStatus,
    this.model3dLocation,
  });
}
