"use client";

import React, { useState } from "react";
import { ArrowUpRight, Menu, X } from "lucide-react";
import BrandLogo from "./BrandLogo";

export default function Navbar() {
  const [mobileOpen, setMobileOpen] = useState(false);

  return (
    <header className="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-3 md:pt-5">
      <nav className="w-full max-w-7xl mx-auto flex items-center justify-between px-6 py-3 rounded-full border bg-steel-card/90 backdrop-blur-xl border-steel-border shadow-2xl">
        <BrandLogo />

        <div className="hidden lg:flex items-center gap-8 text-xs font-semibold uppercase tracking-wider text-steel-muted">
          <a href="#solutions" className="hover:text-white transition-colors">Design Ideas</a>
          <a href="#process" className="hover:text-white transition-colors">How It Works</a>
          <a href="#why-us" className="hover:text-white transition-colors">Why Jaycraft</a>
          <a href="#founder" className="hover:text-white transition-colors">Founder</a>
          <a href="#quote-form" className="hover:text-white transition-colors">Get Estimate</a>
        </div>

        <div className="hidden sm:flex items-center">
          <a
            href="https://wa.me/919876543210?text=Hi%20Jaycraft%20Interiors,%20I'd%20like%20to%20consult%20for%20my%20space."
            target="_blank"
            rel="noopener noreferrer"
            className="rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-wider px-5 py-2.5 shadow-lg shadow-brand-orange/20 transition-all flex items-center gap-1.5 hover:scale-105"
          >
            <span>Consult Online</span>
            <ArrowUpRight className="w-3.5 h-3.5" />
          </a>
        </div>

        <button
          onClick={() => setMobileOpen(!mobileOpen)}
          className="lg:hidden p-2 rounded-xl bg-steel-deep text-steel-muted hover:text-white border border-steel-border"
        >
          {mobileOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
        </button>
      </nav>

      {mobileOpen && (
        <div className="absolute top-20 left-4 right-4 bg-steel-card/95 border border-steel-border rounded-3xl p-6 shadow-2xl flex flex-col gap-4 text-sm font-semibold uppercase tracking-wider text-steel-muted lg:hidden backdrop-blur-xl">
          <a onClick={() => setMobileOpen(false)} href="#solutions" className="hover:text-white">Design Ideas</a>
          <a onClick={() => setMobileOpen(false)} href="#process" className="hover:text-white">How It Works</a>
          <a onClick={() => setMobileOpen(false)} href="#why-us" className="hover:text-white">Why Jaycraft</a>
          <a onClick={() => setMobileOpen(false)} href="#founder" className="hover:text-white">Founder</a>
          <a onClick={() => setMobileOpen(false)} href="#quote-form" className="text-brand-orange">Get Estimate</a>
        </div>
      )}
    </header>
  );
}
