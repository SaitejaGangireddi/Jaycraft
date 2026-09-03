import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"], variable: "--font-inter" });

export const metadata: Metadata = {
  title: "JAYCRAFT INTERIORS | Design • Manufacture • Execute",
  description:
    "Complete Interior Solutions Under One Roof. Factory-manufactured precision modular kitchens, luxury residential spaces, and turnkey commercial fitouts.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className="dark scroll-smooth">
      <body className={`${inter.variable} font-sans bg-steel-deep text-white antialiased`}>
        {children}
      </body>
    </html>
  );
}
