import Dropdown from "./irelia/dropdown/controller";
import Modal from "./irelia/modal/controller";

export function registerIreliaControllers(application) {
  application.register("irelia-dropdown", Dropdown);
  application.register("irelia-modal", Modal);
}
