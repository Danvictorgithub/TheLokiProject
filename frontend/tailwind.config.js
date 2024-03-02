/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,js,svelte,ts}"],
  theme: {
    extend: {
      gridTemplateColumns: {
        "auto-fit": "repeat(auto-fit, minmax(250px, 1fr))",
      },
    },
  },
  plugins: [],
};
