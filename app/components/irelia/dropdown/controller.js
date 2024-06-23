import Dropdown from "@stimulus-components/dropdown";

export default class extends Dropdown {
  static values = {
    open: Boolean,
  };

  connect() {
    super.connect();
    if (this.openValue) {
      this.enter();
    }
  }
}
