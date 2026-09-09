"use client";

import React from "react";
import { Quote, MessageCircle, ShieldCheck, Factory, Sparkles } from "lucide-react";

export default function FoundersSection() {
  return (
    <section id="founder" className="py-24 bg-[#080B0F] px-4 md:px-8 border-t border-steel-border/50 relative overflow-hidden">
      {/* Subtle background glow */}
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[550px] h-[350px] bg-brand-orange/10 blur-[130px] rounded-full pointer-events-none" />

      <div className="max-w-5xl mx-auto relative z-10">
        <div className="rounded-3xl bg-steel-card/80 border border-steel-border/90 backdrop-blur-2xl shadow-2xl p-6 sm:p-10 lg:p-12">
          <div className="grid grid-cols-1 md:grid-cols-12 gap-8 lg:gap-12 items-center">
            
            {/* Prominent Portrait Column */}
            <div className="md:col-span-5 flex justify-center">
              <div className="relative w-full max-w-[320px] aspect-[4/5] rounded-2xl overflow-hidden border-2 border-steel-border/90 shadow-2xl group">
                <img
                  src="https://res.cloudinary.com/dmkjnuolr/image/upload/v1788928679/file_00000000b96c821198750aff5034ebdb_gbdnge_itgagb.png"
                  alt="Ganesh Suthar - Founder of Jaycraft Interiors"
                  className="w-full h-full object-cover object-top transition-transform duration-500 group-hover:scale-105"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent" />
                
                <div className="absolute bottom-4 left-4 right-4 flex items-center justify-between">
                  <div>
                    <p className="text-white text-base font-bold">Ganesh Suthar</p>
                    <p className="text-brand-orange text-xs font-semibold uppercase tracking-wider">Founder & Principal</p>
                  </div>
                  <div className="p-2 rounded-xl bg-brand-orange text-white shadow-lg">
                    <Quote className="w-4 h-4" />
                  </div>
                </div>
              </div>
            </div>

            {/* Founder Narrative Column */}
            <div className="md:col-span-7 flex flex-col justify-center space-y-6 text-left">
              <div className="space-y-2">
                <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-brand-orange/15 border border-brand-orange/30 text-[10px] font-bold uppercase tracking-widest text-brand-orange">
                  <Sparkles className="w-3.5 h-3.5" />
                  <span>Leadership & Craftsmanship</span>
                </div>
                <h3 className="text-2xl sm:text-3xl font-extrabold text-white tracking-tight">
                  Direct Factory Accountability, Zero Middlemen.
                </h3>
              </div>

              <blockquote className="text-sm sm:text-base text-steel-light/90 italic leading-relaxed border-l-2 border-brand-orange pl-4">
                "Designing a luxury home should bring peace of mind, not site delays. By manufacturing every modular panel, carcass, and piece of bespoke joinery directly in our facility, we give homeowners uncompromised quality, clear timelines, and transparent pricing."
              </blockquote>

              <div className="grid grid-cols-2 gap-3 pt-1">
                <div className="flex items-center gap-2.5 text-xs text-steel-light">
                  <Factory className="w-4 h-4 text-brand-orange shrink-0" />
                  <span>In-House Production</span>
                </div>
                <div className="flex items-center gap-2.5 text-xs text-steel-light">
                  <ShieldCheck className="w-4 h-4 text-brand-orange shrink-0" />
                  <span>Turnkey Responsibility</span>
                </div>
              </div>

              <div className="pt-2">
                <a
                  href="https://wa.me/919676427377?text=Hi%20Ganesh,%20I'd%20like%20to%20discuss%20an%20interior%20project%20with%20you"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-flex items-center justify-center gap-2 px-7 py-3.5 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-wider transition-all duration-200 shadow-lg shadow-brand-orange/25 hover:scale-105"
                >
                  <MessageCircle className="w-4 h-4" />
                  <span>Consult Directly with Ganesh</span>
                </a>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
  );
}
