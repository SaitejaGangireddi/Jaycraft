"use client";

import React, { useState, useEffect } from "react";
import { X, Sparkles, CheckCircle2, ArrowRight } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

export default function DelayedPopupModal() {
  const [isOpen, setIsOpen] = useState(false);
  const [submitted, setSubmitted] = useState(false);

  useEffect(() => {
    // Check if dismissed in this session
    const isDismissed = sessionStorage.getItem("jaycraft_modal_dismissed");
    if (isDismissed) return;

    // 45 seconds delay
    const timer = setTimeout(() => {
      setIsOpen(true);
    }, 45000);

    return () => clearTimeout(timer);
  }, []);

  const handleClose = () => {
    setIsOpen(false);
    sessionStorage.setItem("jaycraft_modal_dismissed", "true");
  };

  return (
    <AnimatePresence>
      {isOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          {/* Backdrop Click-to-Dismiss */}
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            onClick={handleClose}
            className="absolute inset-0 bg-black/80 backdrop-blur-md"
          />

          {/* Modal Container */}
          <motion.div
            initial={{ opacity: 0, scale: 0.9, y: 20 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.9, y: 20 }}
            transition={{ type: "spring", damping: 25, stiffness: 300 }}
            className="relative w-full max-w-lg bg-steel-card border border-steel-border rounded-3xl p-6 sm:p-8 shadow-2xl z-10 overflow-hidden"
          >
            {/* Close Button */}
            <button
              onClick={handleClose}
              className="absolute top-5 right-5 p-2 rounded-full bg-steel-deep text-steel-muted hover:text-white hover:border-brand-orange border border-steel-border transition-colors"
              aria-label="Close modal"
            >
              <X className="w-4 h-4" />
            </button>

            {submitted ? (
              <div className="text-center py-6 space-y-3">
                <CheckCircle2 className="w-12 h-12 text-brand-orange mx-auto" />
                <h4 className="text-xl font-bold text-white">Consultation Reserved!</h4>
                <p className="text-xs text-steel-muted">Our senior interior designer will connect with you shortly.</p>
                <button
                  onClick={handleClose}
                  className="px-6 py-2 rounded-full bg-steel-border text-white text-xs font-bold uppercase mt-2 hover:bg-brand-orange transition-colors"
                >
                  Close
                </button>
              </div>
            ) : (
              <div className="space-y-4">
                <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-brand-orange/15 border border-brand-orange/30 text-[10px] font-bold uppercase text-brand-orange">
                  <Sparkles className="w-3 h-3" />
                  <span>Exclusive Design Consultation</span>
                </div>

                <div>
                  <h3 className="text-2xl font-bold text-white">Plan Your Dream Interior</h3>
                  <p className="text-xs text-steel-muted mt-1">
                    Connect directly with our architectural leads for a free layout consultation and ballpark quote.
                  </p>
                </div>

                <form
                  onSubmit={(e) => {
                    e.preventDefault();
                    setSubmitted(true);
                  }}
                  className="space-y-3 pt-2"
                >
                  <input
                    type="text"
                    required
                    placeholder="Your Name"
                    className="w-full px-4 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-white text-xs focus:outline-none focus:border-brand-orange"
                  />
                  <div className="flex gap-2">
                    <span className="px-3 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-steel-muted text-xs flex items-center">
                      🇮🇳 +91
                    </span>
                    <input
                      type="tel"
                      required
                      placeholder="Phone Number"
                      className="w-full px-4 py-2.5 rounded-xl bg-steel-deep border border-steel-border text-white text-xs focus:outline-none focus:border-brand-orange"
                    />
                  </div>

                  <button
                    type="submit"
                    className="w-full py-3 rounded-full bg-brand-orange hover:bg-brand-orange-hover text-white text-xs font-bold uppercase tracking-wider shadow-lg shadow-brand-orange/20 transition-all flex items-center justify-center gap-2"
                  >
                    <span>Request Free Callback</span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </button>
                </form>

                <p className="text-[10px] text-center text-steel-muted">
                  Zero spam. 100% direct consultation from our factory leads.
                </p>
              </div>
            )}
          </motion.div>
        </div>
      )}
    </AnimatePresence>
  );
}
