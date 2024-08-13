import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["container", "frame", "loader", "background"];

  connect() {
    this.observer = new MutationObserver(this.frameMutated.bind(this));
    this.observer.observe(this.frameTarget, {
      attributes: true,
      childList: false,
      characterData: false,
    });
  }

  disconnect() {
    this.observer.disconnect();
    delete this.observer;
    this.close();
  }

  frameMutated() {
    if (this.frameTarget.hasAttribute("busy")) {
      this.loaderTarget.classList.remove("hidden");
      this.open();
    } else {
      this.loaderTarget.classList.add("hidden");
    }
  }

  open() {
    // Unhide the modal
    this.containerTarget.classList.remove("hidden");
  }

  close(e) {
    e.preventDefault();

    // Hide the modal
    this.containerTarget.classList.add("hidden");
  }

  closeWithKeyboard(e) {
    if (
      e.keyCode === 27 &&
      !this.containerTarget.classList.contains("hidden")
    ) {
      this.close(e);
    }
  }
}
