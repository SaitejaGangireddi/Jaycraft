"use client";

import React from "react";
import { ShieldCheck, Factory, Timer, Users } from "lucide-react";

export default function WhyJaycraft() {
  const points = [
    { icon: Users, title: "One-Point Responsibility", desc: "Design, factory production, and site execution managed under one single roof." },
    { icon: Factory, title: "Factory-Controlled Quality", desc: "Industrial CNC automation ensures razor-sharp precision and structural strength." },
    { icon: Timer, title: "Faster Execution", desc: "Off-site manufacturing slashes on-site construction time by up to 50%." },
    { icon: ShieldCheck, title: "Turnkey Capability", desc: "A single accountable partner from conceptual sketches through final key handover." },
  ];

  return (
    <section id="why-us" className="py-24 bg-steel-deep px-4 border-t border-steel-border/50">
      <div className="max-w-7xl mx-auto">
        <div className="text-center max-w-2xl mx-auto mb-16">
          <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Why Jaycraft</span>
          <h2 className="text-3xl font-extrabold text-white mt-2">Engineered For Zero Friction</h2>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
          {points.map((p, i) => {
            const Icon = p.icon;
            return (
              <div key={i} className="p-6 rounded-2xl bg-steel-card border border-steel-border hover:border-brand-orange/40 transition-colors space-y-3">
                <div className="w-10 h-10 rounded-lg bg-brand-orange/10 flex items-center justify-center text-brand-orange">
                  <Icon className="w-5 h-5" />
                </div>
                <h3 className="text-sm font-bold text-white">{p.title}</h3>
                <p className="text-xs text-steel-muted leading-relaxed">{p.desc}</p>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
