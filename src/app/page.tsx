"use client";

import React from "react";
import Navbar from "@/components/Navbar";
import Hero from "@/components/Hero";
import RoomCategories from "@/components/RoomCategories";
import LuxeGlamSection from "@/components/LuxeGlamSection";
import TrendingDesigns from "@/components/TrendingDesigns";
import FoundersSection from "@/components/FoundersSection";
import ProcessFlow from "@/components/ProcessFlow";
import WhyJaycraft from "@/components/WhyJaycraft";
import BudgetQuoteSection from "@/components/BudgetQuoteSection";
import Footer from "@/components/Footer";
import FloatingActions from "@/components/FloatingActions";
import DelayedPopupModal from "@/components/DelayedPopupModal";

export default function Home() {
  return (
    <main className="min-h-screen bg-[#0B0E12] text-steel-light relative selection:bg-brand-orange selection:text-white">
      <Navbar />
      <Hero />
      <RoomCategories />
      <LuxeGlamSection />
      <TrendingDesigns />
      <FoundersSection />
      <ProcessFlow />
      <WhyJaycraft />
      <BudgetQuoteSection />
      <Footer />
      <FloatingActions />
      <DelayedPopupModal />
    </main>
  );
}
