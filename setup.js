const fs = require('fs');
function w(p, c) {
  fs.mkdirSync(require('path').dirname(p), {recursive: true});
  fs.writeFileSync(p, c.trim() + '\n');
}

writeAll();

function writeAll() {
  w('package.json', JSON.stringify({
    name: 'jaycraft-interiors',
    version: '0.1.0',
    private: true,
    scripts: {
      dev: 'next dev',
      build: 'next build',
      start: 'next start'
    },
    dependencies: {
      clsx: '^2.1.1',
      'framer-motion': '^11.11.9',
      'lucide-react': '^0.453.0',
      next: '14.2.15',
      react: '^18.3.1',
      'react-dom': '^18.3.1',
      'tailwind-merge': '^2.5.4'
    },
    devDependencies: {
      '@types/node': '^20.14.0',
      '@types/react': '^18.3.3',
      '@types/react-dom': '^18.3.0',
      autoprefixer: '^10.4.20',
      postcss: '^8.4.47',
      tailwindcss: '^3.4.14',
      typescript: '^5.5.0'
    }
  }, null, 2));

  w('tsconfig.json', JSON.stringify({
    compilerOptions: {
      target: 'es5',
      lib: ['dom', 'dom.iterable', 'esnext'],
      allowJs: true,
      skipLibCheck: true,
      strict: true,
      noEmit: true,
      esModuleInterop: true,
      module: 'esnext',
      moduleResolution: 'bundler',
      resolveJsonModule: true,
      isolatedModules: true,
      jsx: 'preserve',
      incremental: true,
      paths: { '@@*': ['./src/
'] }
    },
    include: ['support/**/:', '**/*.ts', '+*/*.tsx'],
    exclude: ['node_modules']
  }, null, 2));

  w('postcss.config.js', 'module.exports = { plugins: { tailwindcss: {}, autoprefixer: {} } };');

writeComponentsRest();
}