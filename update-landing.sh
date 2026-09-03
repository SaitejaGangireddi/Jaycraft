#!/usr/bin/env bash

# 1. Redesigned Hero: Elegant, Luxurious, Delightful (No CAD/tolerance jargon)
cat << 'FILE' > src/components/Hero.tsx
"use client";

import React from "react";
import { ArrowRight, Sparkles, CheckCircle2 } from "lucide-react";
import { motion } from "framer-motion";

export default function Hero() {
  return (
    <section className="relative min-h-[90vh] pt-36 pb-20 bg-[#0B0E12] px-4 md:px-8 overflow-hidden flex items-center justify-center">
      {/* Subtle warm architectural glow */}
      <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[550px] h-[550px] bg-brand-orange/10 rounded-full blur-[140px] pointer-events-none" />

      <div className="relative max-w-6xl mx-auto text-center space-y-8 z-10">
        <motion.div
          initial={{ opacity: 0, y: -15 }}
          animate={{ opacity: 1, y: 0 }}
          className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-steel-card/90 border border-brand-orange/30 text-xs font-semibold tracking-wider text-brand-orange uppercase"
        >
          <Sparkles className="w-3.5 h-3.5 text-brand-orange animate-pulse" />
          <span>Bespoke Living • Factory Finish • Zero Hassle</span>
        </motion.div>

        <motion.h1
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.1 }}
          className="text-4xl sm:text-6xl lg:text-7xl font-extrabold tracking-tight text-white leading-[1.12]"
        >
          Your Dream Home, <br />
          <span className="text-transparent bg-clip-text bg-gradient-to-r from-[#FF5A1F] via-[#FFA17A] to-amber-200">
            Crafted To Perfection.
          </span>
        </motion.h1>

        <motion.p
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.2 }}
          className="text-base sm:text-lg text-steel-muted max-w-2xl mx-auto leading-relaxed"
        >
          From inspiring initial sketches to factory-built precision and final turnkey handover. We take full care of everything under one roof so you can simply enjoy moving in.
        </motion.p>

        <motion.div
          initial={{ opacity: 0, scale: 0.95 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ delay: 0.3 }}
          className="flex flex-col sm:flex-row items-center justify-center gap-4 pt-2"
        >
          <a
            href="#quote-form"
            className="w-full sm:w-auto px-8 py-4 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-widest shadow-xl shadow-brand-orange/25 transition-all hover:scale-105 flex items-center justify-center gap-2"
          >
            <span>Book Free Consultation</span>
            <ArrowRight className="w-4 h-4" />
          </a>
          <a
            href="#solutions"
            className="w-full sm:w-auto px-8 py-4 rounded-full bg-steel-card hover:bg-steel-border text-white text-xs font-bold uppercase tracking-widest border border-steel-border transition-all flex items-center justify-center"
          >
            Explore Spaces
          </a>
        </motion.div>

        {/* Master Ambiance Card */}
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.4 }}
          className="mt-12 rounded-3xl overflow-hidden border border-steel-border/80 shadow-2xl relative aspect-[16/9] max-h-[500px] w-full group"
        >
          <img
            src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?q=80&w=1600&auto=format&fit=crop"
            alt="Jaycraft Interior Masterpiece"
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-700"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-[#0B0E12] via-transparent to-transparent opacity-80" />

          <div className="absolute bottom-6 left-6 right-6 flex flex-wrap items-center justify-around gap-4 bg-steel-card/85 backdrop-blur-xl border border-steel-border/80 p-4 rounded-2xl">
            <div className="flex items-center gap-2 text-xs font-bold text-white uppercase tracking-wider">
              <CheckCircle2 className="w-4 h-4 text-brand-orange" />
              <span>100% In-House Factory</span>
            </div>
            <div className="flex items-center gap-2 text-xs font-bold text-white uppercase tracking-wider">
              <CheckCircle2 className="w-4 h-4 text-brand-orange" />
              <span>45-Day On-Time Delivery</span>
            </div>
            <div className="flex items-center gap-2 text-xs font-bold text-white uppercase tracking-wider">
              <CheckCircle2 className="w-4 h-4 text-brand-orange" />
              <span>10-Year Assured Warranty</span>
            </div>
          </div>
        </motion.div>
      </div>
    </section>
  );
}
FILE

# 2. FoundersSection dedicated purely to Ganesh Suthar
cat << 'FILE' > src/components/FoundersSection.tsx
"use client";

import React from "react";
import { Quote } from "lucide-react";

export default function FoundersSection() {
  return (
    <section id="founder" className="py-24 bg-steel-deep px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-6xl mx-auto">
        <div className="rounded-3xl bg-steel-card border border-steel-border overflow-hidden grid grid-cols-1 lg:grid-cols-12 shadow-2xl">
          {/* Founder Portrait */}
          <div className="lg:col-span-5 relative min-h-[380px] lg:min-h-full">
            <img
              src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=800&auto=format&fit=crop"
              alt="Ganesh Suthar - Founder Jaycraft Interiors"
              className="w-full h-full object-cover"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-steel-card via-transparent to-transparent lg:hidden" />
          </div>

          {/* Speech & Message */}
          <div className="lg:col-span-7 p-8 md:p-12 flex flex-col justify-between space-y-6">
            <div className="space-y-4">
              <div className="w-12 h-12 rounded-2xl bg-brand-orange/15 text-brand-orange flex items-center justify-center">
                <Quote className="w-6 h-6" />
              </div>
              <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">
                A Note From The Founder
              </span>
              <h3 className="text-2xl sm:text-3xl font-extrabold text-white">
                "Designing a home is not just about furniture. It's about how you feel every time you walk through the door."
              </h3>
              <p className="text-sm text-steel-muted leading-relaxed">
                When I started Jaycraft Interiors, my vision was simple: take away the anxiety, constant contractor follow-ups, and unexpected delays that homeowners dread.
              </p>
              <p className="text-sm text-steel-muted leading-relaxed">
                By manufacturing everything directly in our own facility and managing every single detail from 3D design to the final wipe-down, we promise an enjoyable, transparent experience where quality is never left to chance.
              </p>
            </div>

            <div className="pt-6 border-t border-steel-border flex items-center justify-between">
              <div>
                <h4 className="text-lg font-bold text-white">Ganesh Suthar</h4>
                <p className="text-xs text-brand-orange font-semibold tracking-wider uppercase mt-0.5">
                  Founder & Principal Lead, Jaycraft Interiors
                </p>
              </div>
              <a
                href="https://wa.me/919876543210?text=Hi%20Ganesh,%20I'd%20like%20to%20discuss%20an%20interior%20project."
                target="_blank"
                rel="noopener noreferrer"
                className="px-5 py-2.5 rounded-full bg-steel-deep hover:bg-brand-orange hover:text-white border border-steel-border text-xs font-bold uppercase tracking-wider text-steel-light transition-all"
              >
                Say Hello
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
FILE

# 3. Clean Navbar: Elegant and straightforward
cat << 'FILE' > src/components/Navbar.tsx
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
FILE

# 4. Clean RoomCategories (No fake 3000 count banner)
cat << 'FILE' > src/components/RoomCategories.tsx
"use client";

import React, { useState } from "react";
import { ChevronRight, ChevronDown } from "lucide-react";

export default function RoomCategories() {
  const [showAllSpaces, setShowAllSpaces] = useState(false);

  const rooms = [
    { name: "Modular Kitchen", tag: "Ergonomic & Space-Optimized", image: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=600&auto=format&fit=crop" },
    { name: "Master Bedroom", tag: "Warm Minimalist Suites", image: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=600&auto=format&fit=crop" },
    { name: "Living Lounge", tag: "Luxury Statement Spaces", image: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=600&auto=format&fit=crop" },
    { name: "Wardrobes & Walk-ins", tag: "Floor-to-Ceiling Storage", image: "https://images.unsplash.com/photo-1558997519-83ea9252edf8?q=80&w=600&auto=format&fit=crop" },
    { name: "Study & Work Pods", tag: "Quiet Acoustic Corners", image: "https://images.unsplash.com/photo-1518455027359-f3f8164ba6bd?q=80&w=600&auto=format&fit=crop" },
    { name: "False Ceiling & Lighting", tag: "Architectural Ambiance", image: "https://images.unsplash.com/photo-1513694203232-719a280e022f?q=80&w=600&auto=format&fit=crop" },
    { name: "Pooja Room", tag: "Peaceful Sacred Sanctuaries", image: "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?q=80&w=600&auto=format&fit=crop" },
    { name: "Entertainment & TV Units", tag: "Concealed Cable Walls", image: "https://images.unsplash.com/photo-1595428774223-ef52624120d2?q=80&w=600&auto=format&fit=crop" },
    { name: "Dining Lounges", tag: "Intimate Dinner Settings", image: "https://images.unsplash.com/photo-1617806118233-18e1de247200?q=80&w=600&auto=format&fit=crop" },
  ];

  const visibleRooms = showAllSpaces ? rooms : rooms.slice(0, 6);

  return (
    <section id="solutions" className="py-20 bg-steel-deep px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto">
        <div className="flex items-center gap-3 mb-2">
          <span className="w-1.5 h-8 bg-brand-orange rounded-full" />
          <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
            Curated Living Spaces
          </h2>
        </div>
        <p className="text-sm text-steel-muted max-w-2xl mb-10 leading-relaxed">
          Tailored concepts for every room in your home. Built with water-resistant materials and installed with precision.
        </p>

        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
          {visibleRooms.map((room, idx) => (
            <div
              key={idx}
              className="group rounded-2xl overflow-hidden bg-steel-card border border-steel-border hover:border-brand-orange/60 transition-all duration-300 shadow-lg"
            >
              <div className="aspect-[4/3] overflow-hidden relative">
                <img
                  src={room.image}
                  alt={room.name}
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-70" />
              </div>
              <div className="p-4 flex items-center justify-between">
                <div>
                  <h3 className="font-bold text-white text-base group-hover:text-brand-orange transition-colors">
                    {room.name}
                  </h3>
                  <p className="text-xs text-steel-muted mt-0.5">{room.tag}</p>
                </div>
                <a
                  href="https://wa.me/919876543210?text=Hi%20Jaycraft,%20I'm%20interested%20in%20designs%20for%20my%20home"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="p-2 rounded-full bg-steel-deep text-steel-muted group-hover:bg-brand-orange group-hover:text-white transition-all"
                >
                  <ChevronRight className="w-4 h-4" />
                </a>
              </div>
            </div>
          ))}
        </div>

        <div className="flex justify-center mt-10">
          <button
            onClick={() => setShowAllSpaces(!showAllSpaces)}
            className="px-6 py-2.5 rounded-full border border-steel-border hover:border-brand-orange bg-steel-card text-xs font-bold uppercase tracking-wider text-white flex items-center gap-2 transition-colors shadow-md"
          >
            <span>{showAllSpaces ? "Show Fewer Spaces" : "Explore More Spaces"}</span>
            <ChevronDown className={`w-4 h-4 transition-transform duration-300 ${showAllSpaces ? "rotate-180" : ""}`} />
          </button>
        </div>
      </div>
    </section>
  );
}
FILE

# 5. Connect all components cleanly into page.tsx
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
