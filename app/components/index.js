import Hello from "./hello_controller";
import Dropdown from "./irelia/dropdown/controller";

export function registerIreliaControllers(application) {
  application.register("irelia-hello", Hello);
  application.register("irelia-dropdown", Dropdown);
}
