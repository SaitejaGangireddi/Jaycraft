"use client";
import React from "react";
import { Phone, Mail, MapPin, Instagram, MessageCircle } from "lucide-react";
import BrandLogo from "./BrandLogo";

export default function Footer() {
  return (
    <footer className="bg-[#07090C] text-steel-muted text-xs border-t border-steel-border/70 pt-16 pb-12 px-4 md:px-8">
      <div className="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-4 gap-10 mb-12">
        <div className="space-y-4 md:col-span-1">
          <BrandLogo />
          <p className="text-steel-muted text-xs leading-relaxed">
            Design | Manufacture | Execute. Complete turnkey interior manufacturing and fitouts directly from our facility.
          </p>
          <div className="flex items-center gap-3 pt-2">
            <a href="https://wa.me/919676427377" target="_blank" rel="noopener noreferrer" className="p-2.5 rounded-full bg-steel-card border border-steel-border hover:text-[#25D366] hover:border-[#25D366] transition-colors" title="WhatsApp">
              <MessageCircle className="w-4 h-4" />
            </a>
            <a href="https://instagram.com/jaycraftinteriors" target="_blank" rel="noopener noreferrer" className="p-2.5 rounded-full bg-steel-card border border-steel-border hover:text-[#ee2a7b] hover:border-[#ee2a7b] transition-colors" title="Instagram">
              <Instagram className="w-4 h-4" />
            </a>
            <a href="tel:+919676427377" className="p-2.5 rounded-full bg-steel-card border border-steel-border hover:text-brand-orange hover:border-brand-orange transition-colors" title="Call">
              <Phone className="w-4 h-4" />
            </a>
            <a href="mailto:jaycraftinteriors@gmail.com" className="p-2.5 rounded-full bg-steel-card border border-steel-border hover:text-brand-orange hover:border-brand-orange transition-colors" title="Email">
              <Mail className="w-4 h-4" />
            </a>
          </div>
        </div>

        <div className="space-y-3">
          <h4 className="text-white font-bold uppercase tracking-wider text-xs">Explore</h4>
          <ul className="space-y-2 text-steel-muted">
            <li><a href="#solutions" className="hover:text-white transition-colors">Design Collections</a></li>
            <li><a href="#process" className="hover:text-white transition-colors">Turnkey Process</a></li>
            <li><a href="#why-us" className="hover:text-white transition-colors">Why Jaycraft</a></li>
            <li><a href="#founder" className="hover:text-white transition-colors">Founder Note</a></li>
            <li><a href="#quote-form" className="hover:text-white transition-colors">Request Quote</a></li>
          </ul>
        </div>

        <div className="space-y-3">
          <h4 className="text-white font-bold uppercase tracking-wider text-xs">Direct Contact</h4>
          <ul className="space-y-2.5 text-steel-muted">
            <li className="flex items-center gap-2">
              <Phone className="w-3.5 h-3.5 text-brand-orange shrink-0" />
              <a href="tel:+919676427377" className="hover:text-white transition-colors font-medium">+91 96764 27377</a>
            </li>
            <li className="flex items-center gap-2">
              <MessageCircle className="w-3.5 h-3.5 text-[#25D366] shrink-0" />
              <a href="https://wa.me/919676427377" target="_blank" rel="noopener noreferrer" className="hover:text-white transition-colors">+91 96764 27377 (WhatsApp)</a>
            </li>
            <li className="flex items-center gap-2">
              <Mail className="w-3.5 h-3.5 text-brand-orange shrink-0" />
              <a href="mailto:jaycraftinteriors@gmail.com" className="hover:text-white transition-colors">jaycraftinteriors@gmail.com</a>
            </li>
            <li className="flex items-center gap-2">
              <Instagram className="w-3.5 h-3.5 text-[#ee2a7b] shrink-0" />
              <a href="https://instagram.com/jaycraftinteriors" target="_blank" rel="noopener noreferrer" className="hover:text-white transition-colors">@jaycraftinteriors</a>
            </li>
          </ul>
        </div>

        <div className="space-y-3">
          <h4 className="text-white font-bold uppercase tracking-wider text-xs">Factory & Studio</h4>
          <div className="flex items-start gap-2 text-steel-muted leading-relaxed">
            <MapPin className="w-4 h-4 text-brand-orange shrink-0 mt-0.5" />
            <p>
              Banda Mailaram Village, Suncity Venture,<br />
              Mulugu Mandal, Siddipet District,<br />
              Telangana, India.
            </p>
          </div>
        </div>
      </div>

      <div className="max-w-7xl mx-auto pt-8 border-t border-steel-border/40 flex flex-col sm:flex-row items-center justify-between gap-4 text-center sm:text-left">
        <p className="text-steel-muted text-[11px]">© 2026 JAYCRAFT INTERIORS. All Rights Reserved.</p>
        <p className="text-steel-muted text-[11px]">Founder: <span className="text-white font-semibold">Ganesh Suthar</span></p>
      </div>
    </footer>
  );
}
