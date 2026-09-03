#!/usr/bin/env bash
mkdir -p src/components

cat << 'FILE' > src/components/FloatingActions.tsx
"use client";

import React, { useState } from "react";
import { Phone, Mail, Instagram, X } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

export default function FloatingActions() {
  const [showPrompt, setShowPrompt] = useState(true);

  return (
    <div className="fixed bottom-6 right-6 z-50 flex flex-col items-end gap-3 pointer-events-auto">
      <AnimatePresence>
        {showPrompt && (
          <motion.div
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: 20 }}
            className="flex items-center gap-2 bg-white text-slate-800 px-3.5 py-2 rounded-2xl shadow-xl border border-slate-200 text-xs font-semibold mr-1"
          >
            <span className="w-2 h-2 rounded-full bg-emerald-500 animate-ping" />
            <span>We're online. How may I assist you?</span>
            <button
              onClick={() => setShowPrompt(false)}
              className="text-slate-400 hover:text-slate-700 ml-1"
            >
              <X className="w-3.5 h-3.5" />
            </button>
          </motion.div>
        )}
      </AnimatePresence>

      <div className="flex flex-col items-center gap-2.5">
        <a
          href="https://wa.me/919876543210?text=Hi%20Jaycraft%20Interiors,%20I'd%20like%20to%20consult%20for%20my%20space."
          target="_blank"
          rel="noopener noreferrer"
          className="w-12 h-12 rounded-full bg-[#25D366] text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform duration-200"
          title="Chat on WhatsApp"
        >
          <svg className="w-6 h-6 fill-current" viewBox="0 0 24 24">
            <path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.711 2.598 2.669-.699c.969.539 1.777.78 2.791.78h.002c3.18 0 5.767-2.586 5.768-5.766 0-3.18-2.587-5.766-5.77-5.766zm9.969 5.766c0 5.485-4.484 9.969-9.969 9.969-1.748 0-3.385-.453-4.819-1.246l-5.212 1.366 1.391-5.086c-.883-1.488-1.391-3.217-1.391-5.003 0-5.485 4.484-9.969 9.969-9.969 5.485 0 9.969 4.484 9.969 9.969z" />
          </svg>
        </a>

        <a
          href="https://instagram.com"
          target="_blank"
          rel="noopener noreferrer"
          className="w-12 h-12 rounded-full bg-gradient-to-tr from-[#f9ce34] via-[#ee2a7b] to-[#6228d7] text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform duration-200"
          title="Follow on Instagram"
        >
          <Instagram className="w-6 h-6" />
        </a>

        <a
          href="tel:+919876543210"
          className="w-12 h-12 rounded-full bg-brand-orange text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform duration-200"
          title="Direct Call"
        >
          <Phone className="w-5 h-5" />
        </a>

        <a
          href="mailto:projects@jaycraftinteriors.com"
          className="w-12 h-12 rounded-full bg-steel-card border border-steel-border text-white flex items-center justify-center shadow-lg hover:border-brand-orange hover:text-brand-orange hover:scale-110 transition-transform duration-200"
          title="Send Email"
        >
          <Mail className="w-5 h-5" />
        </a>
      </div>
    </div>
  );
}
FILE

cat << 'FILE' > src/components/RoomCategories.tsx
"use client";

import React, { useState } from "react";
import { ChevronRight, ChevronDown } from "lucide-react";

export default function RoomCategories() {
  const [showAllSpaces, setShowAllSpaces] = useState(false);

  const rooms = [
    { name: "Modular Kitchen", count: "3,334 Designs", image: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=600&auto=format&fit=crop" },
    { name: "Master Bedroom", count: "3,328 Designs", image: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=600&auto=format&fit=crop" },
    { name: "Living Room", count: "2,287 Designs", image: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=600&auto=format&fit=crop" },
    { name: "Wardrobe & Closets", count: "1,780 Designs", image: "https://images.unsplash.com/photo-1558997519-83ea9252edf8?q=80&w=600&auto=format&fit=crop" },
    { name: "Study & Home Office", count: "1,136 Designs", image: "https://images.unsplash.com/photo-1518455027359-f3f8164ba6bd?q=80&w=600&auto=format&fit=crop" },
    { name: "False Ceiling Designs", count: "1,262 Designs", image: "https://images.unsplash.com/photo-1513694203232-719a280e022f?q=80&w=600&auto=format&fit=crop" },
    { name: "Pooja Room", count: "866 Designs", image: "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?q=80&w=600&auto=format&fit=crop" },
    { name: "TV Unit Designs", count: "1,643 Designs", image: "https://images.unsplash.com/photo-1595428774223-ef52624120d2?q=80&w=600&auto=format&fit=crop" },
    { name: "Luxury Dining Room", count: "1,680 Designs", image: "https://images.unsplash.com/photo-1617806118233-18e1de247200?q=80&w=600&auto=format&fit=crop" },
    { name: "Foyer & Entryway", count: "1,067 Designs", image: "https://images.unsplash.com/photo-1544457070-4cd773b4d71e?q=80&w=600&auto=format&fit=crop" },
    { name: "Balcony & Deck", count: "554 Designs", image: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=600&auto=format&fit=crop" },
    { name: "Bathroom & Vanity", count: "1,376 Designs", image: "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?q=80&w=600&auto=format&fit=crop" },
  ];

  const visibleRooms = showAllSpaces ? rooms : rooms.slice(0, 6);

  return (
    <section id="solutions" className="py-20 bg-steel-deep px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto">
        <div className="flex items-center gap-3 mb-2">
          <span className="w-1.5 h-8 bg-brand-orange rounded-full" />
          <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
            Home Interior Design
          </h2>
        </div>
        <p className="text-sm text-steel-muted max-w-3xl mb-10 leading-relaxed">
          We bring you carefully curated interior design ideas to give your home a distinctive touch. Explore exclusive factory-finished interior solutions designed for contemporary lifestyles.
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
                  <p className="text-xs text-steel-muted mt-0.5">{room.count}</p>
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
            <span>{showAllSpaces ? "Show Fewer Spaces" : "View More Spaces"}</span>
            <ChevronDown className={`w-4 h-4 transition-transform duration-300 ${showAllSpaces ? "rotate-180" : ""}`} />
          </button>
        </div>
      </div>
    </section>
  );
}
FILE

cat << 'FILE' > src/components/LuxeGlamSection.tsx
"use client";

import React from "react";
import { Sparkles } from "lucide-react";

export default function LuxeGlamSection() {
  const cards = [
    { title: "Art Deco Dining Room Design with Dark Marble Top Table", img: "https://images.unsplash.com/photo-1617806118233-18e1de247200?q=80&w=600&auto=format&fit=crop" },
    { title: "Mid-Century Master Bedroom Design with Gold Geometric Wall", img: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=600&auto=format&fit=crop" },
    { title: "Modern Living Room Design with Marble Feature Wall & Chandelier", img: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=600&auto=format&fit=crop" },
  ];

  return (
    <section className="py-12 bg-steel-deep px-4 md:px-8">
      <div className="max-w-7xl mx-auto bg-steel-card/60 border border-steel-border rounded-3xl p-6 md:p-8 space-y-6 shadow-xl">
        <div className="flex items-center gap-3">
          <div className="p-2.5 rounded-2xl bg-brand-orange/15 text-brand-orange">
            <Sparkles className="w-5 h-5" />
          </div>
          <div>
            <h3 className="text-xl md:text-2xl font-bold text-white">
              Modern Luxe Glam Home Interiors
            </h3>
            <p className="text-xs text-steel-muted mt-0.5">
              Discover stunning interiors featuring premium materials, bold accents, elegant decor, and refined finishes.
            </p>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {cards.map((item, idx) => (
            <div key={idx} className="bg-steel-deep rounded-2xl border border-steel-border overflow-hidden flex flex-col justify-between group hover:border-brand-orange/40 transition-colors">
              <div>
                <div className="aspect-[16/10] overflow-hidden">
                  <img src={item.img} alt={item.title} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" />
                </div>
                <div className="p-4">
                  <h4 className="text-xs font-semibold text-white line-clamp-1">{item.title}</h4>
                </div>
              </div>
              <div className="p-4 pt-0">
                <a
                  href="https://wa.me/919876543210?text=I'd%20like%20to%20book%20a%20consultation%20for%20Modern%20Luxe%20Glam"
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

cat << 'FILE' > src/components/TrendingDesigns.tsx
"use client";

import React from "react";
import { Flame } from "lucide-react";

export default function TrendingDesigns() {
  const cards = [
    { title: "L-Shaped Modern Kitchen Design with Cream Cabinets", img: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=600&auto=format&fit=crop" },
    { title: "Indian Traditional Living Room Design with Blue-Red Accents", img: "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?q=80&w=600&auto=format&fit=crop" },
    { title: "Modern Master Bedroom Design with Mustard Yellow Backing", img: "https://images.unsplash.com/photo-1540518614846-7ede433c4ef2?q=80&w=600&auto=format&fit=crop" },
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
            <div key={idx} className="bg-steel-deep rounded-2xl border border-steel-border overflow-hidden flex flex-col justify-between group hover:border-brand-orange/40 transition-colors">
              <div>
                <div className="aspect-[16/10] overflow-hidden">
                  <img src={item.img} alt={item.title} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" />
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

cat << 'FILE' > src/components/BudgetQuoteSection.tsx
"use client";

import React, { useState } from "react";
import { CheckCircle } from "lucide-react";

export default function BudgetQuoteSection() {
  const [submitted, setSubmitted] = useState(false);

  return (
    <section className="py-16 bg-steel-deep px-4 md:px-8">
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
      <Footer />
      <FloatingActions />
    </main>
  );
}
FILE
