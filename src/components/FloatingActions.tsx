"use client";
import React, { useState } from "react";
import { Phone, Mail, Instagram, X } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

export default function FloatingActions() {
  const [showPrompt, setShowPrompt] = useState(true);

  return (
    <div className="fixed bottom-6 right-6 z-50 flex flex-col items-end gap-3 pointer-events-auto">
      <AnimatePresence>
        {showPrompt && (
          <motion.div initial={{ opacity: 0, x: 20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: 20 }} className="flex items-center gap-2 bg-white text-slate-800 px-3.5 py-2 rounded-2xl shadow-xl border border-slate-200 text-xs font-semibold mr-1">
            <span className="w-2 h-2 rounded-full bg-emerald-500 animate-ping" />
            <span>We are online. How may I assist you?</span>
            <button onClick={() => setShowPrompt(false)} className="text-slate-400 hover:text-slate-700 ml-1">
              <X className="w-3.5 h-3.5" />
            </button>
          </motion.div>
        )}
      </AnimatePresence>

      <div className="flex flex-col items-center gap-2.5">
        <a href="https://wa.me/919676427377?text=Hi%20Jaycraft%20Interiors,%20I%20would%20like%20to%20consult%20for%20my%20interior%20project." target="_blank" rel="noopener noreferrer" className="w-12 h-12 rounded-full bg-[#25D366] text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform" title="WhatsApp">
          <svg className="w-6 h-6 fill-current" viewBox="0 0 24 24">
            <path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.711 2.598 2.669-.699c.969.539 1.777.78 2.791.78h.002c3.18 0 5.767-2.586 5.768-5.766 0-3.18-2.587-5.766-5.77-5.766zm9.969 5.766c0 5.485-4.484 9.969-9.969 9.969-1.748 0-3.385-.453-4.819-1.246l-5.212 1.366 1.391-5.086c-.883-1.488-1.391-3.217-1.391-5.003 0-5.485 4.484-9.969 9.969-9.969 5.485 0 9.969 4.484 9.969 9.969z" />
          </svg>
        </a>
        <a href="https://instagram.com/jaycraftinteriors" target="_blank" rel="noopener noreferrer" className="w-12 h-12 rounded-full bg-gradient-to-tr from-[#f9ce34] via-[#ee2a7b] to-[#6228d7] text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform" title="Instagram">
          <Instagram className="w-6 h-6" />
        </a>
        <a href="tel:+919676427377" className="w-12 h-12 rounded-full bg-brand-orange text-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform" title="Call">
          <Phone className="w-5 h-5" />
        </a>
        <a href="mailto:jaycraftinteriors@gmail.com" className="w-12 h-12 rounded-full bg-steel-card border border-steel-border text-white flex items-center justify-center shadow-lg hover:border-brand-orange hover:text-brand-orange hover:scale-110 transition-transform" title="Email">
          <Mail className="w-5 h-5" />
        </a>
      </div>
    </div>
  );
}
