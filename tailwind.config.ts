import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        steel: {
          deep: "#0B0E12",
          card: "#1A1F26",
          border: "#2B323D",
          muted: "#94A3B8",
          light: "#F8FAFC",
        },
        brand: {
          orange: "#FF5A1F",
          "orange-hover": "#E84E0F",
        },
      },
      fontFamily: {
        sans: ["var(--font-inter)", "sans-serif"],
      },
    },
  },
  plugins: [],
};
export default config;
