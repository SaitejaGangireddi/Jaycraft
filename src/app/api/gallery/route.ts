import { NextResponse } from "next/server";
import { v2 as cloudinary } from "cloudinary";

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME || "dmkjnuolr",
  api_key: process.env.CLOUDINARY_API_KEY || "721575545417744",
  api_secret: process.env.CLOUDINARY_API_SECRET || "SO54jFILfl0cNxP04UqLkN97Cng",
  secure: true,
});

export const dynamic = "force-dynamic";

export async function GET() {
  try {
    // Cloudinary Search API queries the exact Jaycraft folder
    const result = await cloudinary.search
      .expression("folder:Jaycraft*")
      .sort_by("public_id", "desc")
      .max_results(100)
      .execute();

    const urls = (result.resources || []).map((resource: any) => resource.secure_url);

    return NextResponse.json({ urls, count: urls.length });
  } catch (error: any) {
    console.error("Cloudinary Search Error:", error);
    return NextResponse.json({ urls: [], error: error.message }, { status: 500 });
  }
}