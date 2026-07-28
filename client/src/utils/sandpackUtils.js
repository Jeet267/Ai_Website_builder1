const STABLE_VERSIONS = {
    "lucide-react": "^0.292.0",
    "framer-motion": "^10.16.4",
    "react-router-dom": "^6.20.0",
    "axios": "^1.6.2",
    "clsx": "^2.0.0",
    "tailwind-merge": "^2.0.0",
    "date-fns": "^2.30.0",
    "recharts": "^2.10.3"
};

// Scans source files to detect npm dependencies from import statements
export function detectDependencies(files) {
    const deps = {};
    if (!files) return deps;

    const allCode = Object.values(files).join("\n");
    const filePaths = Object.keys(files);

    const isLocalFileOrFolder = (pkgName) => {
        const name = pkgName.startsWith("@/") ? pkgName.substring(2) : pkgName;
        return (
            pkgName.startsWith("@/") ||
            pkgName === "@" ||
            filePaths.some(p => 
                p === `/${name}` || 
                p.startsWith(`/${name}/`) || 
                p.replace(/\.[^/.]+$/, "") === `/${name}` ||
                p.includes(`/${name}/`) || 
                p.includes(`/${name}.`)
            )
        );
    };

    const importRegex = /import\s+(?:.*?\s+)?from\s+['"]([^./][^'"]*)['"]/g;
    let match;
    while ((match = importRegex.exec(allCode)) !== null) {
        const rawImport = match[1];

        // Scoped packages like @scope/package, normal packages like package
        const pkg = rawImport.startsWith("@") && !rawImport.startsWith("@/")
            ? rawImport.split("/").slice(0, 2).join("/")
            : rawImport.split("/")[0];

        // Skip react (included in template), react-dom, and local modules
        if (pkg !== "react" && pkg !== "react-dom" && !isLocalFileOrFolder(pkg)) {
            deps[pkg] = STABLE_VERSIONS[pkg] || "latest";
        }
    }
    return deps;
}
