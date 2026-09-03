#!/usr/bin/env bash

# 1. Update TrendingDesigns to fix broken Unsplash image URL
cat << 'FILE' > src/components/TrendingDesigns.tsx
"use client";

import React from "react";
import { Flame } from "lucide-react";

export default function TrendingDesigns() {
  const cards = [
    {
      title: "L-Shaped Modern Kitchen Design with Cream Cabinets",
      img: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=600&auto=format&fit=crop",
    },
    {
      title: "Indian Traditional Living Room Design with Blue-Red Accents",
      img: "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?q=80&w=600&auto=format&fit=crop",
    },
    {
      title: "Modern Master Bedroom Design with Mustard Yellow Backing",
      img: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=600&auto=format&fit=crop",
    },
  ];

  return (
    <section className="py-12 bg-steel-deep px-4 md:px-8">
      <div className="max-w-7xl mx-auto bg-steel-card/60 border border-steel-border rounded-3xl p-6 md:p-8 space-y-6 shadow-xl">
        <div className="flex items-center gap-3">
          <div className="p-2.5 rounded-2xl bg-brand-orange/15 text-brand-orange">
            <Flame className="w-5 h-5" />
          </div>
          <div>
            <h3 className="text-xl md:text-2xl font-bold text-white">
              Top Trending Design Ideas
            </h3>
            <p className="text-xs text-steel-muted mt-0.5">
              Design concepts chosen by luxury homeowners and modern space enthusiasts.
            </p>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {cards.map((item, idx) => (
            <div
              key={idx}
              className="bg-steel-deep rounded-2xl border border-steel-border overflow-hidden flex flex-col justify-between group hover:border-brand-orange/40 transition-colors"
            >
              <div>
                <div className="aspect-[16/10] overflow-hidden bg-steel-card">
                  <img
                    src={item.img}
                    alt={item.title}
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                  />
                </div>
                <div className="p-4">
                  <h4 className="text-xs font-semibold text-white line-clamp-1">{item.title}</h4>
                </div>
              </div>
              <div className="p-4 pt-0">
                <a
                  href="https://wa.me/919876543210?text=I'd%20like%20to%20book%20a%20consultation%20for%20Trending%20Designs"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="block w-full py-2.5 text-center rounded-full border border-brand-orange text-brand-orange hover:bg-brand-orange hover:text-white text-xs font-bold tracking-wider uppercase transition-colors"
                >
                  Book Free Consultation
                </a>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
FILE

# 2. Add Expanded Navbar with dropdowns and more header options
cat << 'FILE' > src/components/Navbar.tsx
"use client";

import React, { useState } from "react";
import { ArrowUpRight, ChevronDown, Menu, X } from "lucide-react";
import BrandLogo from "./BrandLogo";

export default function Navbar() {
  const [mobileOpen, setMobileOpen] = useState(false);

  return (
    <header className="fixed top-0 left-0 right-0 z-50 flex justify-center px-4 pt-3 md:pt-5">
      <nav className="w-full max-w-7xl mx-auto flex items-center justify-between px-6 py-3 rounded-full border bg-steel-card/90 backdrop-blur-xl border-steel-border shadow-2xl">
        <BrandLogo />

        <div className="hidden lg:flex items-center gap-7 text-xs font-semibold uppercase tracking-wider text-steel-muted">
          <a href="#solutions" className="hover:text-white transition-colors">Design Ideas</a>
          <a href="#engineering" className="hover:text-white transition-colors flex items-center gap-1 text-brand-orange">
            <span>3D Craft</span>
            <span className="px-1.5 py-0.5 rounded bg-brand-orange/20 text-[9px]">Live</span>
          </a>
          <a href="#process" className="hover:text-white transition-colors">Factory Process</a>
          <a href="#why-us" className="hover:text-white transition-colors">Why Jaycraft</a>
          <a href="#founders" className="hover:text-white transition-colors">Founders</a>
          <a href="#quote-form" className="hover:text-white transition-colors">Pricing</a>
        </div>

        <div className="hidden sm:flex items-center gap-3">
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
          <a onClick={() => setMobileOpen(false)} href="#engineering" className="text-brand-orange">3D Craft & Factory</a>
          <a onClick={() => setMobileOpen(false)} href="#process" className="hover:text-white">Turnkey Process</a>
          <a onClick={() => setMobileOpen(false)} href="#founders" className="hover:text-white">Leadership & Founders</a>
          <a onClick={() => setMobileOpen(false)} href="#quote-form" className="hover:text-white">Get Free BOQ</a>
        </div>
      )}
    </header>
  );
}
FILE

# 3. Create High-Tech 3D Craft Engineering Hero with interactive rotation & blueprints
cat << 'FILE' > src/components/Hero.tsx
"use client";

import React, { useState } from "react";
import { ArrowRight, Box, Cpu, Ruler, Sparkles, Layers, Sliders, CheckCircle2 } from "lucide-react";
import { motion } from "framer-motion";

export default function Hero() {
  const [activeLayer, setActiveLayer] = useState<"cad" | "factory" | "finish">("finish");

  const previews = {
    cad: {
      tag: "Laser CAD Simulation & Structural Math",
      desc: "Sub-millimeter CNC panel sizing and digital stress load mapping before lumber enters machines.",
      metric: "±0.2mm Precision Tolerance",
      img: "https://images.unsplash.com/photo-1503387762-592deb58ef4e?q=80&w=1200&auto=format&fit=crop",
    },
    factory: {
      tag: "Automated German Edge-Banding & Milling",
      desc: "PUR zero-joint laser edge sealing with waterproof adhesion and certified tensile ratings.",
      metric: "100% Moisture Proofing",
      img: "https://images.unsplash.com/photo-1581092160607-ee22621dd758?q=80&w=1200&auto=format&fit=crop",
    },
    finish: {
      tag: "Turnkey Architecture & Living Ambiance",
      desc: "Fluted Italian veneers, concealed magnetic channels, and architectural warm spectrum lighting.",
      metric: "120-Point Snag Audited",
      img: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=1200&auto=format&fit=crop",
    },
  };

  return (
    <section id="engineering" className="relative min-h-screen pt-36 pb-20 bg-steel-deep px-4 md:px-8 overflow-hidden">
      {/* Laser Architectural Grid */}
      <div className="absolute inset-0 bg-[linear-gradient(to_right,#1A1F26_1px,transparent_1px),linear-gradient(to_bottom,#1A1F26_1px,transparent_1px)] bg-[size:3.5rem_3.5rem] [mask-image:radial-gradient(ellipse_60%_50%_at_50%_40%,#000_70%,transparent_100%)] opacity-50 pointer-events-none" />

      {/* Atmospheric Orange & Indigo Glow */}
      <div className="absolute top-1/4 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-brand-orange/15 rounded-full blur-[140px] pointer-events-none" />

      <div className="relative max-w-7xl mx-auto space-y-12">
        <div className="text-center space-y-6 max-w-3xl mx-auto">
          <motion.div
            initial={{ opacity: 0, y: -20 }}
            animate={{ opacity: 1, y: 0 }}
            className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-steel-card/80 border border-brand-orange/40 backdrop-blur-md text-xs font-semibold tracking-wider text-brand-orange uppercase shadow-lg shadow-brand-orange/10"
          >
            <Sparkles className="w-4 h-4 text-brand-orange animate-pulse" />
            <span>Direct Manufacturing • German Machinery • Architectural Art</span>
          </motion.div>

          <motion.h1
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="text-4xl sm:text-6xl font-extrabold tracking-tight text-white leading-[1.15]"
          >
            Spatial Architecture. <br />
            <span className="text-transparent bg-clip-text bg-gradient-to-r from-brand-orange via-orange-400 to-amber-300">
              Manufactured Precision.
            </span>
          </motion.h1>

          <p className="text-sm sm:text-base text-steel-muted leading-relaxed">
            Eliminating traditional carpenter delays through in-house CNC automation, structural CAD engineering, and turnkey luxury installation under one single roof.
          </p>

          <div className="flex flex-wrap items-center justify-center gap-3 pt-2">
            <a
              href="#quote-form"
              className="px-7 py-3.5 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-wider shadow-lg shadow-brand-orange/25 transition-all flex items-center gap-2 hover:scale-105"
            >
              <span>Get Free Estimate</span>
              <ArrowRight className="w-4 h-4" />
            </a>
            <a
              href="#solutions"
              className="px-7 py-3.5 rounded-full bg-steel-card hover:bg-steel-border text-white text-xs font-bold uppercase tracking-wider border border-steel-border transition-all"
            >
              Browse 3,000+ Designs
            </a>
          </div>
        </div>

        {/* Interactive 3D Digital Craft Inspection Stage */}
        <div className="rounded-3xl border border-steel-border bg-steel-card/70 backdrop-blur-xl p-4 md:p-6 shadow-2xl space-y-6">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-4 border-b border-steel-border/70 pb-4">
            <div className="flex items-center gap-3">
              <div className="p-2.5 rounded-xl bg-brand-orange/20 text-brand-orange">
                <Box className="w-5 h-5" />
              </div>
              <div>
                <h3 className="text-sm font-bold text-white uppercase tracking-wider">
                  Interactive Architectural Pipeline
                </h3>
                <p className="text-xs text-steel-muted">Switch viewport states to inspect build phases</p>
              </div>
            </div>

            {/* Toggle Modes */}
            <div className="flex items-center gap-1.5 p-1 rounded-2xl bg-steel-deep border border-steel-border">
              {(["cad", "factory", "finish"] as const).map((layer) => (
                <button
                  key={layer}
                  onClick={() => setActiveLayer(layer)}
                  className={`px-4 py-2 rounded-xl text-xs font-bold uppercase tracking-wider transition-all ${
                    activeLayer === layer
                      ? "bg-brand-orange text-white shadow-md"
                      : "text-steel-muted hover:text-white"
                  }`}
                >
                  {layer === "cad" ? "01. CAD Model" : layer === "factory" ? "02. CNC Factory" : "03. Luxury Finish"}
                </button>
              ))}
            </div>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-center">
            {/* Visual Canvas */}
            <div className="lg:col-span-8 rounded-2xl overflow-hidden border border-steel-border relative aspect-[16/9] max-h-[440px] bg-black">
              <motion.img
                key={activeLayer}
                initial={{ opacity: 0, scale: 0.98 }}
                animate={{ opacity: 1, scale: 1 }}
                transition={{ duration: 0.4 }}
                src={previews[activeLayer].img}
                alt={previews[activeLayer].tag}
                className="w-full h-full object-cover"
              />
              <div className="absolute inset-0 bg-gradient-to-t from-steel-deep/90 via-transparent to-transparent pointer-events-none" />

              <div className="absolute top-4 left-4 flex items-center gap-2 bg-steel-deep/80 backdrop-blur-md px-3 py-1.5 rounded-full border border-steel-border text-[11px] font-mono text-brand-orange">
                <span className="w-2 h-2 rounded-full bg-brand-orange animate-ping" />
                <span>PHASE: {activeLayer.toUpperCase()}</span>
              </div>

              <div className="absolute bottom-4 left-4 right-4 flex items-center justify-between">
                <div className="text-xs font-bold text-white uppercase tracking-wider drop-shadow-md">
                  {previews[activeLayer].tag}
                </div>
                <div className="px-3 py-1 rounded-full bg-brand-orange/90 text-white font-mono text-xs font-bold shadow-lg">
                  {previews[activeLayer].metric}
                </div>
              </div>
            </div>

            {/* Technical Spec Breakdown */}
            <div className="lg:col-span-4 space-y-4">
              <div className="p-4 rounded-2xl bg-steel-deep border border-steel-border space-y-2">
                <span className="text-[10px] font-bold uppercase tracking-widest text-brand-orange">Specification</span>
                <h4 className="text-base font-bold text-white">{previews[activeLayer].tag}</h4>
                <p className="text-xs text-steel-muted leading-relaxed">{previews[activeLayer].desc}</p>
              </div>

              <div className="space-y-2.5">
                <div className="flex items-center gap-2.5 p-3 rounded-xl bg-steel-deep/60 border border-steel-border/80">
                  <CheckCircle2 className="w-4 h-4 text-brand-orange shrink-0" />
                  <span className="text-xs text-steel-light font-medium">BWP Marine Grade Plywood (IS 710)</span>
                </div>
                <div className="flex items-center gap-2.5 p-3 rounded-xl bg-steel-deep/60 border border-steel-border/80">
                  <CheckCircle2 className="w-4 h-4 text-brand-orange shrink-0" />
                  <span className="text-xs text-steel-light font-medium">Soft-Close Concealed German Hardware</span>
                </div>
                <div className="flex items-center gap-2.5 p-3 rounded-xl bg-steel-deep/60 border border-steel-border/80">
                  <CheckCircle2 className="w-4 h-4 text-brand-orange shrink-0" />
                  <span className="text-xs text-steel-light font-medium">Anti-Bacterial Acrylic & Anti-Scratch PU</span>
                </div>
              </div>

              <a
                href="#quote-form"
                className="block text-center w-full py-3 rounded-xl bg-steel-deep hover:bg-steel-border border border-brand-orange/40 text-brand-orange hover:text-white text-xs font-bold uppercase tracking-wider transition-colors"
              >
                Inquire For Your Floor Plan
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
FILE

# 4. Create Dedicated Founders & Leadership Component
cat << 'FILE' > src/components/FoundersSection.tsx
"use client";

import React from "react";
import { Award, Compass, ShieldCheck, Quote } from "lucide-react";

export default function FoundersSection() {
  const leadership = [
    {
      role: "Founder & Managing Director",
      name: "Sai Teja",
      specialty: "Industrial Spatial Engineering & Turnkey Architecture",
      bio: "Pioneered the integration of direct German CNC manufacturing with turnkey luxury fitouts, replacing unreliable traditional carpentry with engineered speed and flawless finish.",
      tags: ["Factory Automation", "Spatial CAD", "10-Year Guarantee"],
    },
    {
      role: "Head of Design & Architecture",
      name: "Jaycraft Studio Collective",
      specialty: "Bespoke Residential & Commercial Spaces",
      bio: "An elite cohort of interior architects transforming over 500,000 sq.ft of raw apartments, villas, and corporate floor plans into tailored ergonomic living spaces.",
      tags: ["Modern Luxe", "Ergonomics", "Sustainable Materials"],
    },
  ];

  return (
    <section id="founders" className="py-24 bg-steel-deep px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto space-y-16">
        <div className="max-w-3xl space-y-3">
          <div className="flex items-center gap-2 text-xs font-bold uppercase tracking-widest text-brand-orange">
            <Compass className="w-4 h-4 text-brand-orange" />
            <span>Leadership & Ethos</span>
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
            The Minds Crafting Your Masterpiece
          </h2>
          <p className="text-sm text-steel-muted leading-relaxed">
            Founded on the conviction that bespoke luxury design should never be compromised by unorganized contractor delays. We built an accountable turnkey ecosystem backed by our own factory.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {leadership.map((leader, i) => (
            <div
              key={i}
              className="rounded-3xl bg-steel-card border border-steel-border p-8 relative flex flex-col justify-between hover:border-brand-orange/40 transition-all duration-300 shadow-xl group"
            >
              <div className="space-y-6">
                <div className="flex items-start justify-between">
                  <div>
                    <span className="text-xs font-bold uppercase tracking-wider text-brand-orange block">
                      {leader.role}
                    </span>
                    <h3 className="text-2xl font-bold text-white mt-1 group-hover:text-brand-orange transition-colors">
                      {leader.name}
                    </h3>
                    <p className="text-xs text-steel-muted mt-0.5">{leader.specialty}</p>
                  </div>
                  <div className="p-3 rounded-2xl bg-brand-orange/10 text-brand-orange">
                    <Award className="w-6 h-6" />
                  </div>
                </div>

                <p className="text-xs text-steel-light/90 leading-relaxed italic border-l-2 border-brand-orange pl-4">
                  "{leader.bio}"
                </p>

                <div className="flex flex-wrap gap-2 pt-2">
                  {leader.tags.map((tag, tIdx) => (
                    <span
                      key={tIdx}
                      className="px-3 py-1 rounded-full text-[11px] font-semibold bg-steel-deep text-steel-muted border border-steel-border"
                    >
                      {tag}
                    </span>
                  ))}
                </div>
              </div>

              <div className="mt-8 pt-6 border-t border-steel-border/60 flex items-center justify-between text-xs font-bold uppercase tracking-wider">
                <span className="text-steel-muted">Direct Accountability</span>
                <a
                  href="https://wa.me/919876543210?text=Hi%20Jaycraft%20Founders,%20I'd%20like%20to%20discuss%20a%20turnkey%20project."
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-brand-orange hover:underline flex items-center gap-1"
                >
                  Schedule Founder Call &rarr;
                </a>
              </div>
            </div>
          ))}
        </div>

        {/* Brand Promise Banner */}
        <div className="p-8 rounded-3xl bg-gradient-to-r from-steel-card via-[#1A1F26] to-[#201510] border border-steel-border flex flex-col md:flex-row items-center justify-between gap-6 shadow-2xl">
          <div className="space-y-2">
            <h4 className="text-lg font-bold text-white">Our Founder Guarantee</h4>
            <p className="text-xs text-steel-muted max-w-xl">
              Every square foot is engineered off-site with zero hidden contractor margins, strict timeline penalties, and 100% material authenticity certificates.
            </p>
          </div>
          <a
            href="#quote-form"
            className="whitespace-nowrap px-8 py-3.5 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-widest shadow-lg shadow-brand-orange/20 transition-all hover:scale-105"
          >
            Start Your Project
          </a>
        </div>
      </div>
    </section>
  );
}
FILE

# 5. Anchor BudgetQuoteSection with #quote-form ID
cat << 'FILE' > src/components/BudgetQuoteSection.tsx
"use client";

import React, { useState } from "react";
import { CheckCircle } from "lucide-react";

export default function BudgetQuoteSection() {
  const [submitted, setSubmitted] = useState(false);

  return (
    <section id="quote-form" className="py-16 bg-steel-deep px-4 md:px-8">
      <div className="max-w-7xl mx-auto rounded-3xl overflow-hidden border border-steel-border bg-steel-card grid grid-cols-1 lg:grid-cols-2 shadow-2xl">
        <div className="relative min-h-[320px] lg:min-h-full">
          <img
            src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=1000&auto=format&fit=crop"
            alt="Interior Ambiance"
            className="w-full h-full object-cover"
          />
          <div className="absolute inset-0 bg-black/40" />
          <div className="absolute bottom-8 left-8 right-8">
            <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Turnkey Precision</span>
            <h3 className="text-2xl font-bold text-white mt-1">Direct Factory Pricing with Zero Middlemen</h3>
          </div>
        </div>

        <div className="p-8 lg:p-12 flex flex-col justify-center bg-[#14181E]">
          {submitted ? (
            <div className="text-center py-12 space-y-4">
              <CheckCircle className="w-14 h-14 text-brand-orange mx-auto" />
              <h3 className="text-2xl font-bold text-white">Request Received!</h3>
              <p className="text-xs text-steel-muted">Our senior interior designer will get in touch on WhatsApp shortly.</p>
              <button
                onClick={() => setSubmitted(false)}
                className="px-6 py-2 bg-steel-border rounded-full text-xs font-bold text-white uppercase mt-4"
              >
                Submit Another
              </button>
            </div>
          ) : (
            <form
              onSubmit={(e) => {
                e.preventDefault();
                setSubmitted(true);
              }}
              className="space-y-4"
            >
              <div>
                <h3 className="text-2xl font-bold text-white">Designs for Every Budget</h3>
                <p className="text-xs text-steel-muted mt-1">
                  Get your dream home today. Let our experts craft the ideal turnkey package for you.
                </p>
              </div>

              <div className="space-y-3 pt-2">
                <input
                  type="text"
                  required
                  placeholder="Name"
                  className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange placeholder:text-steel-muted/60"
                />
                <input
                  type="email"
                  required
                  placeholder="Email"
                  className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange placeholder:text-steel-muted/60"
                />
                <div className="flex gap-2">
                  <span className="px-3 py-3 rounded-xl bg-steel-deep border border-steel-border text-steel-muted text-sm flex items-center">
                    🇮🇳 +91
                  </span>
                  <input
                    type="tel"
                    required
                    placeholder="Phone Number"
                    className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange placeholder:text-steel-muted/60"
                  />
                </div>

                <select
                  className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange"
                  defaultValue="Hyderabad"
                >
                  <option value="Hyderabad">Hyderabad</option>
                  <option value="Bengaluru">Bengaluru</option>
                  <option value="Chennai">Chennai</option>
                  <option value="Mumbai">Mumbai</option>
                </select>

                <div className="flex items-center gap-2 pt-1">
                  <input
                    type="checkbox"
                    id="wa-optin"
                    defaultChecked
                    className="accent-brand-orange rounded w-4 h-4"
                  />
                  <label htmlFor="wa-optin" className="text-xs text-steel-muted">
                    Send me updates on WhatsApp
                  </label>
                </div>
              </div>

              <button
                type="submit"
                className="w-full py-3.5 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-widest shadow-lg shadow-brand-orange/25 transition-all mt-4"
              >
                Get Free Quote
              </button>
            </form>
          )}
        </div>
      </div>
    </section>
  );
}
FILE

# 6. Update page.tsx to incorporate FoundersSection
cat << 'FILE' > src/app/page.tsx
"use client";

import React from "react";
import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import RoomCategories from "@/components/RoomCategories";
import LuxeGlamSection from "@/components/LuxeGlamSection";
import TrendingDesigns from "@/components/TrendingDesigns";
import BudgetQuoteSection from "@/components/BudgetQuoteSection";
import ProcessFlow from "@/components/ProcessFlow";
import WhyJaycraft from "@/components/WhyJaycraft";
import FoundersSection from "@/components/FoundersSection";
import Footer from "@/components/Footer";
import FloatingActions from "@/components/FloatingActions";

export default function Home() {
  return (
    <main className="min-h-screen bg-steel-deep text-steel-light relative selection:bg-brand-orange selection:text-white">
      <Navbar />
      <Hero />
      <RoomCategories />
      <LuxeGlamSection />
      <TrendingDesigns />
      <BudgetQuoteSection />
      <ProcessFlow />
      <WhyJaycraft />
      <FoundersSection />
      <Footer />
      <FloatingActions />
    </main>
  );
}
FILE
