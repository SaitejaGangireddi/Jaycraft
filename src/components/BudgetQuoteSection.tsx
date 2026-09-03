"use client";

import React, { useState } from "react";
import { CheckCircle } from "lucide-react";

export default function BudgetQuoteSection() {
  const [submitted, setSubmitted] = useState(false);

  return (
    <section id="quote-form" className="py-16 bg-steel-deep px-4 md:px-8">
      <div className="max-w-7xl mx-auto rounded-3xl overflow-hidden border border-steel-border bg-steel-card grid grid-cols-1 lg:grid-cols-2 shadow-2xl">
        <div className="relative min-h-[320px] lg:min-h-full">
          <img
            src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?q=80&w=1000&auto=format&fit=crop"
            alt="Interior Ambiance"
            className="w-full h-full object-cover"
          />
          <div className="absolute inset-0 bg-black/40" />
          <div className="absolute bottom-8 left-8 right-8">
            <span className="text-xs font-bold uppercase tracking-widest text-brand-orange">Turnkey Precision</span>
            <h3 className="text-2xl font-bold text-white mt-1">Direct Factory Pricing with Zero Middlemen</h3>
          </div>
        </div>

        <div className="p-8 lg:p-12 flex flex-col justify-center bg-[#14181E]">
          {submitted ? (
            <div className="text-center py-12 space-y-4">
              <CheckCircle className="w-14 h-14 text-brand-orange mx-auto" />
              <h3 className="text-2xl font-bold text-white">Request Received!</h3>
              <p className="text-xs text-steel-muted">Our senior interior designer will get in touch on WhatsApp shortly.</p>
              <button
                onClick={() => setSubmitted(false)}
                className="px-6 py-2 bg-steel-border rounded-full text-xs font-bold text-white uppercase mt-4"
              >
                Submit Another
              </button>
            </div>
          ) : (
            <form
              onSubmit={(e) => {
                e.preventDefault();
                setSubmitted(true);
              }}
              className="space-y-4"
            >
              <div>
                <h3 className="text-2xl font-bold text-white">Designs for Every Budget</h3>
                <p className="text-xs text-steel-muted mt-1">
                  Get your dream home today. Let our experts craft the ideal turnkey package for you.
                </p>
              </div>

              <div className="space-y-3 pt-2">
                <input
                  type="text"
                  required
                  placeholder="Name"
                  className="w-full px-4 py-3 rounded-xl bg-steel-deep border border-steel-border text-white text-sm focus:outline-none focus:border-brand-orange placeholder:text-steel-muted/60"
                />
                <input
                  type="email"
                  required
                  placeholder="Email"
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
                    id="wa-optin"
                    defaultChecked
                    className="accent-brand-orange rounded w-4 h-4"
                  />
                  <label htmlFor="wa-optin" className="text-xs text-steel-muted">
                    Send me updates on WhatsApp
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
    </section>
  );
}
