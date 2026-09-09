"use client";

import React, { useEffect, useState } from "react";
import { Sparkles, Eye, ChevronDown } from "lucide-react";

export default function WorkGallery() {
  const [images, setImages] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [visibleCount, setVisibleCount] = useState(12);

  useEffect(() => {
    async function loadPortfolio() {
      try {
        const res = await fetch("/api/gallery");
        const data = await res.json();
        if (Array.isArray(data.urls) && data.urls.length > 0) {
          setImages(data.urls);
        }
      } catch (err) {
        console.error("Failed to fetch gallery:", err);
      } finally {
        setLoading(false);
      }
    }
    loadPortfolio();
  }, []);

  const visibleImages = images.slice(0, visibleCount);

  return (
    <section id="our-work" className="py-20 bg-[#0B0E12] px-4 md:px-8 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto space-y-10">
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-brand-orange/15 border border-brand-orange/30 text-[10px] font-bold uppercase tracking-widest text-brand-orange">
            <Sparkles className="w-3.5 h-3.5" />
            <span>Factory & On-Site Showcase</span>
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight">
            Our Executed Work {images.length > 0 && `(${images.length} Projects)`}
          </h2>
          <p className="text-xs sm:text-sm text-steel-muted leading-relaxed">
            Real spaces manufactured directly in our facility and executed turnkey across Telangana.
          </p>
        </div>

        {loading ? (
          <div className="flex justify-center items-center py-20 text-steel-muted text-xs">
            <span className="w-2.5 h-2.5 bg-brand-orange rounded-full animate-ping mr-3" />
            Loading project photos directly from Jaycraft factory archive...
          </div>
        ) : images.length === 0 ? (
          <div className="text-center py-12 text-steel-muted text-xs border border-dashed border-steel-border rounded-2xl p-8">
            Syncing folder assets from Cloudinary...
          </div>
        ) : (
          <>
            <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
              {visibleImages.map((src, idx) => (
                <div
                  key={idx}
                  className="group relative rounded-2xl overflow-hidden bg-steel-card border border-steel-border/80 aspect-square shadow-lg"
                >
                  <img
                    src={src}
                    alt={`Jaycraft Project ${idx + 1}`}
                    loading="lazy"
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity flex items-end p-3 sm:p-4">
                    <a
                      href={`https://wa.me/919676427377?text=Hi%20Jaycraft,%20I'm%20inquiring%20about%20your%20showcase%20design%20#${idx + 1}`}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="w-full py-2 rounded-xl bg-brand-orange text-white text-[11px] font-bold uppercase tracking-wider text-center flex items-center justify-center gap-1.5 shadow-md hover:bg-brand-orange-hover transition-colors"
                    >
                      <Eye className="w-3.5 h-3.5" />
                      <span>Inquire Design</span>
                    </a>
                  </div>
                </div>
              ))}
            </div>

            {visibleCount < images.length && (
              <div className="flex justify-center pt-6">
                <button
                  onClick={() => setVisibleCount((prev) => prev + 16)}
                  className="px-6 py-2.5 rounded-full border border-steel-border hover:border-brand-orange bg-steel-card text-xs font-bold uppercase tracking-wider text-white flex items-center gap-2 transition-colors shadow-md"
                >
                  <span>Load More Works ({images.length - visibleCount} remaining)</span>
                  <ChevronDown className="w-4 h-4" />
                </button>
              </div>
            )}
          </>
        )}
      </div>
    </section>
  );
}
