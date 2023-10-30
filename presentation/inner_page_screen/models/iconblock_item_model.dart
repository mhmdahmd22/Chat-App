/// This class is used in the [iconblock_item_widget] screen.
class IconblockItemModel {
  IconblockItemModel({
    this.value,
    this.id,
  }) {
    value = value ?? "5.97";
    id = id ?? "";
  }

  String? value;

  String? id;
}
