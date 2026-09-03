"use client";

import React, { useState } from "react";
import { ArrowUpRight } from "lucide-react";

export default function DesignCatalog() {
  const [filter, setFilter] = useState("all");

  const items = [
    { title: "Aura Island Modular Kitchen", cat: "kitchen", image: "https://images.unsplash.com/photo-1556911220-e15b29be8c8f?q=80&w=800&auto=format&fit=crop" },
    { title: "Zenith Master Bedroom Suite", cat: "residential", image: "https://images.unsplash.com/photo-1616594039964-ae9021a400a0?q=80&w=800&auto=format&fit=crop" },
    { title: "FinTech Corporate Fitout", cat: "commercial", image: "https://images.unsplash.com/photo-1497366216548-37526070297c?q=80&w=800&auto=format&fit=crop" },
    { title: "Minimalist Veneer Walk-in Closet", cat: "residential", image: "https://images.unsplash.com/photo-1558997519-83ea9252edf8?q=80&w=800&auto=format&fit=crop" },
    { title: "Monolith Italian Marble Kitchen", cat: "kitchen", image: "https://images.unsplash.com/photo-1600585154526-990dced4db0d?q=80&w=800&auto=format&fit=crop" },
    { title: "Acoustic Executive Boardroom", cat: "commercial", image: "https://images.unsplash.com/photo-1497215728101-856f4ea42174?q=80&w=800&auto=format&fit=crop" },
  ];

  const filtered = filter === "all" ? items : items.filter((i) => i.cat === filter);

  return (
    <section id="portfolio" className="py-24 bg-steel-deep px-4 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between mb-10 gap-4">
          <div>
            <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Portfolio</span>
            <h2 className="text-3xl font-extrabold text-white mt-1">Engineered Interior Masterpieces</h2>
          </div>
          <div className="flex flex-wrap gap-2">
            {["all", "kitchen", "residential", "commercial"].map((t) => (
              <button
                key={t}
                onClick={() => setFilter(t)}
                className={`px-4 py-1.5 rounded-full text-xs font-bold uppercase transition-all ${
                  filter === t ? "bg-brand-orange text-white" : "bg-steel-card text-steel-muted border border-steel-border hover:text-white"
                }`}
              >
                {t}
              </button>
            ))}
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {filtered.map((p, idx) => (
            <div key={idx} className="group rounded-2xl overflow-hidden bg-steel-card border border-steel-border hover:border-brand-orange/50 transition-all duration-300">
              <div className="aspect-[4/3] overflow-hidden relative">
                <img src={p.image} alt={p.title} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" />
                <div className="absolute inset-0 bg-black/20 group-hover:bg-black/0 transition-colors" />
              </div>
              <div className="p-5 flex items-center justify-between">
                <h3 className="text-sm font-bold text-white">{p.title}</h3>
                <a
                  href={`https://wa.me/919876543210?text=Hi%20Jaycraft,%20I'm%20interested%20in%20a%20project%20like%20${encodeURIComponent(p.title)}`}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-flex items-center gap-1 text-xs text-brand-orange font-bold uppercase hover:underline"
                >
                  <span>Inquire</span>
                  <ArrowUpRight className="w-3.5 h-3.5" />
                </a>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
