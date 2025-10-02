return {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php", "php5" },
    root_markers = { "composer.json", ".git" },
    settings = {
        intelephense = {
            completion = {
                fullyQualifyGlobalConstantsAndFunctions = true,
            },
            files = {
                associations = {
                    "*.php",
                    "*.php5",
                },
            },
            diagnostics = {
                relaxedTypeCheck = false,
                noMixedTypeCheck = true,
            },
            compatibility = {
                preferPsalmPhpstanPrefixedAnnotations = true,
            },
        },
    },
}
