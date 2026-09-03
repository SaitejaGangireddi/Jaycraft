"use client";

import React, { useState } from "react";
import { ChevronRight, ChevronDown, Sparkles, Flame, CheckCircle } from "lucide-react";

export default function LivspaceShowcase() {
  const [showAllSpaces, setShowAllSpaces] = useState(false);
  const [formSubmitted, setFormSubmitted] = useState(false);

  const roomCategories = [
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

  const visibleSpaces = showAllSpaces ? roomCategories : roomCategories.slice(0, 6);

  const luxeCollections = [
    { title: "Art Deco Dining Design with Dark Marble Top", img: "https://images.unsplash.com/photo-1617806118233-18e1de247200?q=80&w=600&auto=format&fit=crop" },
    { title: "Mid-Century Master Bedroom with Gold Accents", img: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=600&auto=format&fit=crop" },
    { title: "Modern Luxury Living Room with Chandelier", img: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=600&auto=format&fit=crop" },
  ];

  const trendingCollections = [
    { title: "L-Shaped Modern Kitchen with Cream Cabinets", img: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=600&auto=format&fit=crop" },
    { title: "Indian Contemporary Living with Heritage Motifs", img: "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?q=80&w=600&auto=format&fit=crop" },
    { title: "Modern Master Bedroom with Accent Velvet Headboard", img: "https://images.unsplash.com/photo-1540518614846-7ede433c4ef2?q=80&w=600&auto=format&fit=crop" },
  ];

  return (
    <div id="catalog" className="w-full bg-steel-deep text-steel-light py-20 px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto space-y-20">

        {/* 1. Header & Room Categories Grid */}
        <div>
          <div className="flex items-center gap-3 mb-2">
            <span className="w-1 h-8 bg-brand-orange rounded-full" />
            <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
              Home Interior Design
            </h2>
          </div>
          <p className="text-sm text-steel-muted max-w-3xl mb-8 leading-relaxed">
            We bring you carefully curated, factory-precision interior design concepts to give your home a distinctive look. Explore engineered aesthetics that are as practical as they are breathtaking.
          </p>

          <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
            {visibleSpaces.map((room, idx) => (
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
                    <p className="text-xs text-steel-muted">{room.count}</p>
                  </div>
                  <a
                    href="https://wa.me/919876543210?text=I%20am%20interested%20in%20designs%20for%20my%20home"
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
              className="px-6 py-2.5 rounded-full border border-steel-border hover:border-brand-orange bg-steel-card text-xs font-bold uppercase tracking-wider text-white flex items-center gap-2 transition-colors"
            >
              <span>{showAllSpaces ? "Show Fewer Spaces" : "View More Spaces"}</span>
              <ChevronDown className={`w-4 h-4 transition-transform ${showAllSpaces ? "rotate-180" : ""}`} />
            </button>
          </div>
        </div>

        {/* 2. Modern Luxe Glam Collection Carousel Card */}
        <div className="bg-steel-card/60 border border-steel-border rounded-3xl p-6 md:p-8 space-y-6">
          <div className="flex items-center gap-3">
            <div className="p-2.5 rounded-2xl bg-brand-orange/15 text-brand-orange">
              <Sparkles className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-xl md:text-2xl font-bold text-white">
                Modern Luxe Glam Home Interiors
              </h3>
              <p className="text-xs text-steel-muted">
                Engineered with high-gloss acrylics, concealed gold channels, fluted wall panels, and bespoke finishes.
              </p>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {luxeCollections.map((item, i) => (
              <div key={i} className="bg-steel-deep rounded-2xl border border-steel-border overflow-hidden flex flex-col justify-between">
                <div>
                  <div className="aspect-[16/10] overflow-hidden">
                    <img src={item.img} alt={item.title} className="w-full h-full object-cover" />
                  </div>
                  <div className="p-4">
                    <h4 className="text-xs font-semibold text-white line-clamp-1">{item.title}</h4>
                  </div>
                </div>
                <div className="p-4 pt-0">
                  <a
                    href="https://wa.me/919876543210?text=Please%20schedule%20a%20free%20design%20consultation"
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

        {/* 3. Top Trending Design Ideas */}
        <div className="bg-steel-card/60 border border-steel-border rounded-3xl p-6 md:p-8 space-y-6">
          <div className="flex items-center gap-3">
            <div className="p-2.5 rounded-2xl bg-brand-orange/15 text-brand-orange">
              <Flame className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-xl md:text-2xl font-bold text-white">
                Top Trending Design Ideas
              </h3>
              <p className="text-xs text-steel-muted">
                Most requested modular combinations and layout schemes this season.
              </p>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {trendingCollections.map((item, i) => (
              <div key={i} className="bg-steel-deep rounded-2xl border border-steel-border overflow-hidden flex flex-col justify-between">
                <div>
                  <div className="aspect-[16/10] overflow-hidden">
                    <img src={item.img} alt={item.title} className="w-full h-full object-cover" />
                  </div>
                  <div className="p-4">
                    <h4 className="text-xs font-semibold text-white line-clamp-1">{item.title}</h4>
                  </div>
                </div>
                <div className="p-4 pt-0">
                  <a
                    href="https://wa.me/919876543210?text=I'd%20like%20to%20consult%20for%20trending%20designs"
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

        {/* 4. Designs for Every Budget (Split Lead Gen Hero Banner) */}
        <div className="rounded-3xl overflow-hidden border border-steel-border bg-steel-card grid grid-cols-1 lg:grid-cols-2 shadow-2xl">
          <div className="relative min-h-[300px] lg:min-h-full">
            <img
              src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=1000&auto=format&fit=crop"
              alt="Luxury Interior Setup"
              className="w-full h-full object-cover"
            />
            <div className="absolute inset-0 bg-black/40" />
            <div className="absolute bottom-8 left-8 right-8">
              <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Turnkey Perfection</span>
              <h3 className="text-2xl font-bold text-white mt-1">Direct Factory Pricing with No Middlemen</h3>
            </div>
          </div>

          <div className="p-8 lg:p-12 flex flex-col justify-center bg-[#14181E]">
            {formSubmitted ? (
              <div className="text-center py-12 space-y-4">
                <CheckCircle className="w-14 h-14 text-brand-orange mx-auto" />
                <h3 className="text-2xl font-bold text-white">Thank You!</h3>
                <p className="text-xs text-steel-muted">Our senior designer will connect with you on WhatsApp shortly.</p>
                <button
                  onClick={() => setFormSubmitted(false)}
                  className="px-6 py-2 bg-steel-border rounded-full text-xs font-bold text-white uppercase"
                >
                  Submit Another
                </button>
              </div>
            ) : (
              <form
                onSubmit={(e) => {
                  e.preventDefault();
                  setFormSubmitted(true);
                }}
                className="space-y-4"
              >
                <div>
                  <h3 className="text-2xl font-bold text-white">Designs for Every Budget</h3>
                  <p className="text-xs text-steel-muted mt-1">
                    Get your dream home interior with certified German hardware and factory precision.
                  </p>
                </div>

                <div className="space-y-3 pt-2">
                  <input
                    type="text"
                    required
                    placeholder="Your Name"
                    className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange placeholder:text-steel-muted/60"
                  />
                  <input
                    type="email"
                    required
                    placeholder="Email Address"
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
                      id="wa-consent"
                      defaultChecked
                      className="accent-brand-orange rounded w-4 h-4"
                    />
                    <label htmlFor="wa-consent" className="text-xs text-steel-muted">
                      Send me project updates & catalogs on WhatsApp
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

      </div>
    </div>
  );
}
