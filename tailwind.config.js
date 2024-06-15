/** @type {import('tailwindcss').Config} */

const plugin = require("tailwindcss/plugin");

module.exports = {
  content: ["./app/components/**/*.{rb,erb,html}"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Poppins"],
      },
      colors: {
        "irelia-primary": "var(--irelia-colors-primary)",
        "irelia-primary-hover": "var(--irelia-colors-primary-hover)",
        "irelia-danger": "var(--irelia-colors-danger)",
        "irelia-danger-hover": "var(--irelia-colors-danger-hover)",
      },
      borderColor: {
        DEFAULT: "var(--color-border)",
      },
      container: {
        center: true,
        screens: {
          DEFAULT: "1200px",
        },
        padding: {
          DEFAULT: "1.5em",
        },
      },
      typography: {
        DEFAULT: {
          css: {
            maxWidth: "100%",
          },
        },
      },
    },
  },
  plugins: [
    plugin(function ({ addBase }) {
      addBase({
        html: { fontSize: "13.5px" },
      });
    }),
  ],
};
