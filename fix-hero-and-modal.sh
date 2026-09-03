#!/usr/bin/env bash

# 1. Update Hero.tsx: Clean, spacious, luxury steel & orange tones (no blocked-out center card)
cat << 'FILE' > src/components/Hero.tsx
"use client";

import React from "react";
import { ArrowRight, Sparkles, CheckCircle2 } from "lucide-react";
import { motion } from "framer-motion";

export default function Hero() {
  return (
    <section className="relative min-h-[94vh] flex items-center justify-center bg-[#0B0E12] px-4 md:px-8 overflow-hidden pt-32 pb-20">
      {/* Deep Slate Architectural Interior with Warm Orange Accents */}
      <div className="absolute inset-0 z-0">
        <img
          src="https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?q=80&w=2000&auto=format&fit=crop"
          alt="Jaycraft Modern Architectural Interior"
          className="w-full h-full object-cover object-center"
        />
        {/* Steel Vignette Gradient to integrate seamlessly with the brand palette */}
        <div className="absolute inset-0 bg-gradient-to-t from-[#0B0E12] via-[#0B0E12]/75 to-[#0B0E12]/55" />
        <div className="absolute inset-0 bg-radial-at-c from-transparent via-[#0B0E12]/50 to-[#0B0E12]" />
      </div>

      <div className="relative z-10 max-w-4xl mx-auto text-center space-y-6">
        <motion.div
          initial={{ opacity: 0, y: -15 }}
          animate={{ opacity: 1, y: 0 }}
          className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-steel-card/85 border border-brand-orange/40 backdrop-blur-md text-[11px] font-semibold tracking-widest text-brand-orange uppercase shadow-lg shadow-brand-orange/10"
        >
          <Sparkles className="w-3.5 h-3.5 text-brand-orange animate-pulse" />
          <span>Complete Interior Solutions</span>
        </motion.div>

        {/* Scaled-down, elegant typography */}
        <motion.h1
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.1 }}
          className="text-3xl sm:text-5xl lg:text-6xl font-bold tracking-tight text-white leading-tight"
        >
          Thoughtful Spatial Design, <br />
          <span className="text-transparent bg-clip-text bg-gradient-to-r from-[#FF5A1F] via-[#FFA17A] to-amber-200">
            Engineered To Last.
          </span>
        </motion.h1>

        <motion.p
          initial={{ opacity: 0, y: 15 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.2 }}
          className="text-xs sm:text-base text-steel-muted max-w-xl mx-auto leading-relaxed"
        >
          From personalized concept design to factory fabrication and turnkey installation, we handle every detail under one roof.
        </motion.p>

        <motion.div
          initial={{ opacity: 0, scale: 0.95 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ delay: 0.3 }}
          className="flex flex-col sm:flex-row items-center justify-center gap-3 pt-3"
        >
          <a
            href="#quote-form"
            className="w-full sm:w-auto px-7 py-3.5 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-widest shadow-xl shadow-brand-orange/25 transition-all flex items-center justify-center gap-2 hover:scale-105"
          >
            <span>Book Consultation</span>
            <ArrowRight className="w-4 h-4" />
          </a>
          <a
            href="#solutions"
            className="w-full sm:w-auto px-7 py-3.5 rounded-full bg-steel-card/80 hover:bg-steel-border text-steel-light text-xs font-bold uppercase tracking-widest border border-steel-border transition-all flex items-center justify-center backdrop-blur-md"
          >
            Browse Spaces
          </a>
        </motion.div>

        {/* Minimalist Trust Pill */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.4 }}
          className="pt-6 flex items-center justify-center gap-6 text-[11px] text-steel-light/80 font-medium"
        >
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>Direct Factory</span>
          </div>
          <span className="text-steel-border">•</span>
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>45-Day Delivery</span>
          </div>
          <span className="text-steel-border">•</span>
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>10-Yr Warranty</span>
          </div>
        </motion.div>
      </div>
    </section>
  );
}
FILE

# 2. Create DelayedPopupModal.tsx (Triggers at exactly 45 seconds with close button & backdrop dismiss)
cat << 'FILE' > src/components/DelayedPopupModal.tsx
"use client";

import React, { useState, useEffect } from "react";
import { X, Sparkles, CheckCircle2, ArrowRight } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

export default function DelayedPopupModal() {
  const [isOpen, setIsOpen] = useState(false);
  const [submitted, setSubmitted] = useState(false);

  useEffect(() => {
    // Check if dismissed in this session
    const isDismissed = sessionStorage.getItem("jaycraft_modal_dismissed");
    if (isDismissed) return;

    // 45 seconds delay
    const timer = setTimeout(() => {
      setIsOpen(true);
    }, 45000);

    return () => clearTimeout(timer);
  }, []);

  const handleClose = () => {
    setIsOpen(false);
    sessionStorage.setItem("jaycraft_modal_dismissed", "true");
  };

  return (
    <AnimatePresence>
      {isOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          {/* Backdrop Click-to-Dismiss */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            onClick={handleClose}
            className="absolute inset-0 bg-black/80 backdrop-blur-md"
          />

          {/* Modal Container */}
          <motion.div
            initial={{ opacity: 0, scale: 0.9, y: 20 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.9, y: 20 }}
            transition={{ type: "spring", damping: 25, stiffness: 300 }}
            className="relative w-full max-w-lg bg-steel-card border border-steel-border rounded-3xl p-6 sm:p-8 shadow-2xl z-10 overflow-hidden"
          >
            {/* Close Button */}
            <button
              onClick={handleClose}
              className="absolute top-5 right-5 p-2 rounded-full bg-steel-deep text-steel-muted hover:text-white hover:border-brand-orange border border-steel-border transition-colors"
              aria-label="Close modal"
            >
              <X className="w-4 h-4" />
            </button>

            {submitted ? (
              <div className="text-center py-6 space-y-3">
                <CheckCircle2 className="w-12 h-12 text-brand-orange mx-auto" />
                <h4 className="text-xl font-bold text-white">Consultation Reserved!</h4>
                <p className="text-xs text-steel-muted">Our senior interior designer will connect with you shortly.</p>
                <button
                  onClick={handleClose}
                  className="px-6 py-2 rounded-full bg-steel-border text-white text-xs font-bold uppercase mt-2 hover:bg-brand-orange transition-colors"
                >
                  Close
                </button>
              </div>
            ) : (
              <div className="space-y-4">
                <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-brand-orange/15 border border-brand-orange/30 text-[10px] font-bold uppercase text-brand-orange">
                  <Sparkles className="w-3 h-3" />
                  <span>Exclusive Design Consultation</span>
                </div>

                <div>
                  <h3 className="text-2xl font-bold text-white">Plan Your Dream Interior</h3>
                  <p className="text-xs text-steel-muted mt-1">
                    Connect directly with our architectural leads for a free layout consultation and ballpark quote.
                  </p>
                </div>

                <form
                  onSubmit={(e) => {
                    e.preventDefault();
                    setSubmitted(true);
                  }}
                  className="space-y-3 pt-2"
                >
                  <input
                    type="text"
                    required
                    placeholder="Your Name"
                    className="w-full px-4 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-white text-xs focus:outline-none focus:border-brand-orange"
                  />
                  <div className="flex gap-2">
                    <span className="px-3 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-steel-muted text-xs flex items-center">
                      🇮🇳 +91
                    </span>
                    <input
                      type="tel"
                      required
                      placeholder="Phone Number"
                      className="w-full px-4 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-white text-xs focus:outline-none focus:border-brand-orange"
                    />
                  </div>

                  <button
                    type="submit"
                    className="w-full py-3 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-wider shadow-lg shadow-brand-orange/20 transition-all flex items-center justify-center gap-2"
                  >
                    <span>Request Free Callback</span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </button>
                </form>

                <p className="text-[10px] text-center text-steel-muted">
                  Zero spam. 100% direct consultation from our factory leads.
                </p>
              </div>
            )}
          </motion.div>
        </div>
      )}
    </AnimatePresence>
  );
}
FILE

# 3. Inject DelayedPopupModal into page.tsx
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
import DelayedPopupModal from "@/components/DelayedPopupModal";

export default function Home() {
  return (
    <main className="min-h-screen bg-[#0B0E12] text-steel-light relative selection:bg-brand-orange selection:text-white">
      <Navbar />
      <Hero />
      <RoomCategories />
      <LuxeGlamSection />
      <TrendingDesigns />
      <FoundersSection />
      <ProcessFlow />
      <WhyJaycraft />
      <BudgetQuoteSection />
      <Footer />
      <FloatingActions />
      <DelayedPopupModal />
    </main>
  );
}
FILE
