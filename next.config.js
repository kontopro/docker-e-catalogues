
/**
 * @type {import('next').NextConfig}
 */
const nextConfig = {
  trailingSlash: true,
  basePath: '',  
  output: 'export',
  // output: "standalone",
  images: { unoptimized: true },
   
  }
  module.exports = nextConfig