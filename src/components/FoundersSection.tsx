"use client";
import React from "react";
import { Quote, MessageCircle } from "lucide-react";

export default function FoundersSection() {
  return (
    <section id="founder" className="py-16 bg-steel-deep px-4 flex justify-center items-center">
      <div className="w-full max-w-[460px] aspect-square rounded-3xl bg-steel-card/85 border border-steel-border/90 p-8 backdrop-blur-xl shadow-2xl flex flex-col items-center justify-between text-center relative overflow-hidden group hover:border-brand-orange/40 transition-colors duration-300">
        <div className="absolute -top-10 -right-10 w-36 h-36 bg-brand-orange/15 rounded-full blur-3xl pointer-events-none" />

        <div className="flex flex-col items-center space-y-3">
          <span className="text-[10px] font-bold uppercase tracking-widest text-brand-orange">
            Founder & Principal
          </span>

          <div className="relative">
            <div className="w-24 h-24 rounded-full overflow-hidden border-2 border-brand-orange shadow-lg p-0.5">
              <img
                src="https://res.cloudinary.com/dmkjnuolr/image/upload/v1788928679/file_00000000b96c821198750aff5034ebdb_gbdnge_itgagb.png"
                alt="Ganesh Suthar"
                className="w-full h-full object-cover rounded-full"
              />
            </div>
            <div className="absolute -bottom-1 -right-1 p-1.5 rounded-full bg-brand-orange text-white shadow-md">
              <Quote className="w-3.5 h-3.5" />
            </div>
          </div>

          <div>
            <h4 className="text-lg font-bold text-white tracking-tight">Ganesh Suthar</h4>
            <p className="text-[11px] text-steel-muted font-medium">Jaycraft Interiors</p>
          </div>
        </div>

        <p className="text-xs sm:text-[13px] text-steel-light/90 italic leading-relaxed px-2 font-normal">
          "Designing a home is about peace of mind. We manufacture everything directly in our facility so your journey remains transparent, on-time, and completely stress-free."
        </p>

        <a
          href="https://wa.me/919676427377?text=Hi%20Ganesh,%20I%20would%20like%20to%20consult%20for%20an%20interior%20project"
          target="_blank"
          rel="noopener noreferrer"
          className="w-full py-3 rounded-full bg-steel-deep hover:bg-brand-orange border border-steel-border hover:border-brand-orange text-white text-xs font-bold tracking-wider uppercase transition-all duration-200 flex items-center justify-center gap-2 shadow-md hover:scale-[1.02]"
        >
          <MessageCircle className="w-4 h-4" />
          <span>Connect with Ganesh</span>
        </a>
      </div>
    </section>
  );
}
