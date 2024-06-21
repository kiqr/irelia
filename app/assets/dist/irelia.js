import { Controller } from '@hotwired/stimulus';

class Hello extends Controller {
  connect() {
    this.element.textContent = "Hello world and Stimulus loads! 🎉";
  }
}

class Dropdown extends Controller {
  connect() {
    this.element.textContent = "Reload me";
  }
}

function registerIreliaControllers(application) {
  application.register("irelia-hello", Hello);
  application.register("irelia-dropdown", Dropdown);
}

export { registerIreliaControllers };
