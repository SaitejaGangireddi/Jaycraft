"use client";

import React from "react";

export default function BrandLogo() {
  return (
    <div className="flex items-center gap-3 select-none">
      <div className="relative h-8 w-8 flex-shrink-0 flex items-center justify-center">
        <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg" className="w-full h-full drop-shadow-md">
          <path d="M58 10 H82 V58 C82 78 68 90 48 90 H20 V68 H46 C53 68 58 63 58 56 Z" fill="#F8FAFC" />
          <polygon points="26,38 52,24 52,52" fill="#FF5A1F" />
        </svg>
      </div>
      <div className="flex flex-col">
        <div className="font-black tracking-[0.18em] uppercase text-white leading-none text-xl">
          JAYCRAFT
        </div>
        <div className="flex items-center justify-between text-[8px] tracking-[0.3em] font-semibold text-steel-muted uppercase mt-1">
          <span>Design</span>
          <span className="text-brand-orange">•</span>
          <span>Manufacture</span>
          <span className="text-brand-orange">•</span>
          <span>Execute</span>
        </div>
      </div>
    </div>
  );
}
