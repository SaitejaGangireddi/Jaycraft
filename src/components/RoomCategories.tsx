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
