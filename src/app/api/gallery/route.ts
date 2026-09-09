import { NextResponse } from "next/server";

export async function GET() {
  try {
    // Cloudinary folder search URL
    const cloudName = "dmkjnuolr";
    const folder = "Jaycraft";
    
    // Fetch directly from Cloudinary search/list API
    const res = await fetch(
      `https://res.cloudinary.com/${cloudName}/image/list/${folder}.json`,
      { next: { revalidate: 60 } }
    );

    if (res.ok) {
      const data = await res.json();
      const urls = (data.resources || []).map(
        (img: any) =>
          `https://res.cloudinary.com/${cloudName}/image/upload/q_auto,f_auto,w_800/v${img.version}/${img.public_id}.${img.format}`
      );
      return NextResponse.json({ urls });
    }

    // Fallback: direct prefix listing
    return NextResponse.json({ urls: [] });
  } catch (err) {
    return NextResponse.json({ urls: [] }, { status: 500 });
  }
}
