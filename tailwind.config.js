/** @type {import('tailwindcss').Config} */

const plugin = require("tailwindcss/plugin");

module.exports = {
  content: [
    "./app/components/**/*.{rb,erb,html}",
    "./lib/irelia/options/**/*.{rb,erb,html}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Poppins"],
      },
      colors: {
        "irelia-border": "var(--irelia-colors-border)",
        "irelia-surface": "var(--irelia-colors-surface)",
        "irelia-background": "var(--irelia-colors-background)",
        "irelia-text": "var(--irelia-colors-text)",
        "irelia-primary": "var(--irelia-colors-primary)",
        "irelia-primary-hover": "var(--irelia-colors-primary-hover)",
        "irelia-gray": "var(--irelia-colors-gray)",
        "irelia-gray-hover": "var(--irelia-colors-gray-hover)",
        "irelia-danger": "var(--irelia-colors-danger)",
        "irelia-danger-hover": "var(--irelia-colors-danger-hover)",
      },
      borderColor: {
        DEFAULT: "var(--color-border)",
      },
      typography: {
        DEFAULT: {
          css: {
            color: "var(--irelia-colors-text)",
            maxWidth: "100%",
            "a, .button_to button": {
              color: "var(--irelia-colors-primary)",
              "text-decoration": "none",
              "font-weight": "bold",
              "&:hover": {
                color: "var(--irelia-colors-primary-hover)",
              },
            },
            "h1, h2, h3, h4, h5, h6": {
              color: "var(--irelia-colors-primary)",
            },
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
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
  safelist: ["irelia-form"],
};
