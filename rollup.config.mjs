import resolve from "@rollup/plugin-node-resolve";
import { terser } from "rollup-plugin-terser";
import pkg from "./package.json" with { type: "json" };

export default {
  input: pkg.module,
  output: {
    file: pkg.main,
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
