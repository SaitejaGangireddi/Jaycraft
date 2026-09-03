"use client";

import React from "react";
import { Compass, Factory, Truck, KeyRound } from "lucide-react";

export default function ProcessFlow() {
  const steps = [
    { id: "01", title: "Spatial Architecture", icon: Compass, desc: "Architectural 3D renders, precise laser site survey, and material curation." },
    { id: "02", title: "Factory Production", icon: Factory, desc: "Automated German CNC sizing, zero-gap edge banding, and ISO 9001 precision audits." },
    { id: "03", title: "Precision Logistics", icon: Truck, desc: "Flat-packed engineered modules dispatched directly to eliminate on-site mess and delays." },
    { id: "04", title: "Turnkey Handover", icon: KeyRound, desc: "120-point snag check, deep studio detailing, and 10-year factory warranty certificate." },
  ];

  return (
    <section id="process" className="py-24 bg-steel-deep px-4 border-t border-steel-border/50 relative">
      <div className="max-w-7xl mx-auto">
        <div className="max-w-3xl mb-12">
          <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Brand Promise</span>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-white tracking-tight mt-2">
            From Design → Factory → Installation → Finished Space
          </h2>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
          {steps.map((step) => {
            const Icon = step.icon;
            return (
              <div key={step.id} className="p-6 rounded-2xl bg-steel-card border border-steel-border hover:border-brand-orange/50 transition-all duration-300 space-y-4 group">
                <div className="flex items-center justify-between">
                  <span className="text-2xl font-black text-brand-orange">{step.id}</span>
                  <div className="p-2 rounded-lg bg-brand-orange/10 group-hover:bg-brand-orange group-hover:text-white transition-colors text-brand-orange">
                    <Icon className="w-5 h-5" />
                  </div>
                </div>
                <h3 className="text-base font-bold text-white">{step.title}</h3>
                <p className="text-xs text-steel-muted leading-relaxed">{step.desc}</p>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
