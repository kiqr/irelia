import resolve from "@rollup/plugin-node-resolve";
import { terser } from "rollup-plugin-terser";

export default {
  input: "./app/assets/src/main.js",
  output: {
    file: "./app/assets/dist/javascripts/irelia.js",
    format: "es",
  },
  plugins: [
    resolve(),
    terser({
      mangle: true,
      compress: true,
    }),
  ],
  external: ["stimulus", "@hotwired/stimulus", "@rails/request.js"],
};
