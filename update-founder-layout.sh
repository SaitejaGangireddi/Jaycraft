#!/usr/bin/env bash

# 1. Compact, elegant Founder Card Component
cat << 'FILE' > src/components/FoundersSection.tsx
"use client";

import React from "react";
import { Quote } from "lucide-react";

export default function FoundersSection() {
  return (
    <section id="founder" className="py-14 bg-steel-deep px-4 md:px-8">
      <div className="max-w-4xl mx-auto">
        <div className="rounded-3xl bg-steel-card/80 border border-steel-border/90 p-6 md:p-8 backdrop-blur-xl shadow-xl flex flex-col md:flex-row items-center gap-6 md:gap-8 relative overflow-hidden">
          {/* Subtle accent corner glow */}
          <div className="absolute top-0 right-0 w-32 h-32 bg-brand-orange/10 rounded-full blur-3xl pointer-events-none" />

          {/* Compact Portrait */}
          <div className="relative shrink-0">
            <div className="w-24 h-24 sm:w-28 sm:h-28 rounded-2xl overflow-hidden border-2 border-brand-orange/40 shadow-lg">
              <img
                src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=400&auto=format&fit=crop"
                alt="Ganesh Suthar"
                className="w-full h-full object-cover"
              />
            </div>
            <div className="absolute -bottom-2 -right-2 p-1.5 rounded-lg bg-brand-orange text-white shadow-md">
              <Quote className="w-3.5 h-3.5" />
            </div>
          </div>

          {/* Short, Authentic Founder Statement */}
          <div className="space-y-3 text-center md:text-left flex-1">
            <div className="space-y-1">
              <span className="text-[10px] font-bold uppercase tracking-widest text-brand-orange">
                Founder's Note
              </span>
              <p className="text-sm sm:text-base text-white font-medium italic leading-relaxed">
                "Designing a home is about peace of mind. We manufacture everything in our own factory so your experience remains transparent, on time, and completely stress-free."
              </p>
            </div>

            <div className="pt-2 flex flex-col sm:flex-row sm:items-center justify-between gap-3 border-t border-steel-border/50">
              <div>
                <h4 className="text-sm font-bold text-white">Ganesh Suthar</h4>
                <p className="text-[11px] text-steel-muted">Founder, Jaycraft Interiors</p>
              </div>

              <a
                href="https://wa.me/919876543210?text=Hi%20Ganesh,%20I'd%20like%20to%20consult%20for%20an%20interior%20project"
                target="_blank"
                rel="noopener noreferrer"
                className="inline-flex items-center justify-center self-center sm:self-auto px-4 py-1.5 rounded-full bg-steel-deep hover:bg-brand-orange border border-steel-border hover:border-brand-orange text-white text-[11px] font-bold tracking-wider uppercase transition-colors"
              >
                Connect on WhatsApp &rarr;
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
FILE

# 2. Re-order sections in page.tsx so Founder sits directly in the middle
cat << 'FILE' > src/app/page.tsx
"use client";

import React from "react";
import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import RoomCategories from "@/components/RoomCategories";
import LuxeGlamSection from "@/components/LuxeGlamSection";
import TrendingDesigns from "@/components/TrendingDesigns";
import FoundersSection from "@/components/FoundersSection";
import ProcessFlow from "@/components/ProcessFlow";
import WhyJaycraft from "@/components/WhyJaycraft";
import BudgetQuoteSection from "@/components/BudgetQuoteSection";
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
      
      {/* Placed gracefully in the middle between catalog and workflow */}
      <FoundersSection />

      <ProcessFlow />
      <WhyJaycraft />
      <BudgetQuoteSection />
      <Footer />
      <FloatingActions />
    </main>
  );
}
FILE
