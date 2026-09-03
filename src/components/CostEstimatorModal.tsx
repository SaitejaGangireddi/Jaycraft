"use client";

import React, { useState } from "react";
import { X, CheckCircle2 } from "lucide-react";

export default function CostEstimatorModal({ isOpen, onClose }: { isOpen: boolean; onClose: () => void }) {
  const [bhk, setBhk] = useState("3bhk");
  const [done, setDone] = useState(false);

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm">
      <div className="relative w-full max-w-md bg-steel-card border border-steel-border rounded-3xl p-6 shadow-2xl">
        <button onClick={onClose} className="absolute top-5 right-5 text-steel-muted hover:text-white">
          <X className="w-5 h-5" />
        </button>

        {done ? (
          <div className="text-center py-8 space-y-3">
            <CheckCircle2 className="w-12 h-12 text-brand-orange mx-auto" />
            <h4 className="text-lg font-bold text-white">Estimate Request Received</h4>
            <p className="text-xs text-steel-muted">Our senior interior designer will call you shortly.</p>
            <button onClick={() => { setDone(false); onClose(); }} className="px-6 py-2 rounded-full bg-steel-border text-white text-xs font-bold uppercase mt-4">
              Close
            </button>
          </div>
        ) : (
          <div className="space-y-4">
            <span className="text-xs font-bold uppercase text-brand-orange">Instant Estimator</span>
            <h3 className="text-xl font-bold text-white">Project Cost Calculator</h3>
            <div className="grid grid-cols-3 gap-2">
              {["2bhk", "3bhk", "villa"].map((t) => (
                <button
                  key={t}
                  onClick={() => setBhk(t)}
                  className={`py-2 rounded-xl text-xs font-bold uppercase border ${bhk === t ? "bg-brand-orange text-white border-brand-orange" : "bg-steel-deep text-steel-muted border-steel-border"}`}
                >
                  {t}
                </button>
              ))}
            </div>
            <div className="p-4 rounded-xl bg-steel-deep border border-brand-orange/30">
              <span className="text-[10px] text-steel-muted uppercase block">Ballpark Estimate</span>
              <span className="text-2xl font-black text-white">
                ₹ {bhk === "2bhk" ? "4,80,000" : bhk === "3bhk" ? "6,50,000" : "14,50,000"}*
              </span>
            </div>
            <button
              onClick={() => setDone(true)}
              className="w-full py-3 rounded-full bg-brand-orange text-white text-xs font-bold uppercase tracking-wider shadow-lg shadow-brand-orange/20"
            >
              Request Itemized BOQ
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
