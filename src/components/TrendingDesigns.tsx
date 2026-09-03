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
