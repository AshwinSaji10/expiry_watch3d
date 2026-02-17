class ItemImages {
  final String id;
  final String itemId;
  final String? imageUrl;
  final bool isPrimary;
  final String? ocrMetadata;

  ItemImages({
    required this.id,
    required this.itemId,
    this.imageUrl,
    required this.isPrimary,
    this.ocrMetadata,
  });
}
