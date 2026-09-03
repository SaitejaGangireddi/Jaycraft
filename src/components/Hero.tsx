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

        {/* Trust Indicators without arbitrary day counts */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.4 }}
          className="pt-6 flex items-center justify-center gap-6 text-[11px] text-steel-light/80 font-medium"
        >
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>Direct In-House Factory</span>
          </div>
          <span className="text-steel-border">•</span>
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>Committed Handover</span>
          </div>
          <span className="text-steel-border">•</span>
          <div className="flex items-center gap-1.5">
            <CheckCircle2 className="w-3.5 h-3.5 text-brand-orange" />
            <span>10-Yr Assured Warranty</span>
          </div>
        </motion.div>
      </div>
    </section>
  );
}
