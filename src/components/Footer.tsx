"use client";

import React from "react";
import BrandLogo from "./BrandLogo";

export default function Footer() {
  return (
    <footer className="bg-[#07090C] text-steel-muted text-xs border-t border-steel-border/60 py-12 px-4">
      <div className="max-w-7xl mx-auto flex flex-col md:flex-row items-center justify-between gap-6">
        <BrandLogo />
        <p className="text-center text-steel-muted text-xs">
          © {new Date().getFullYear()} JAYCRAFT INTERIORS. Design | Manufacture | Execute. Complete Interior Solutions Under One Roof.
        </p>
        <div className="flex gap-4">
          <a href="tel:+919876543210" className="text-steel-light hover:text-brand-orange transition-colors">+91 98765 43210</a>
          <a href="mailto:projects@jaycraftinteriors.com" className="text-steel-light hover:text-brand-orange transition-colors">projects@jaycraftinteriors.com</a>
        </div>
      </div>
    </footer>
  );
}
