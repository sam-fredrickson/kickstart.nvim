-- Rust support. rustaceanvim auto-configures rust-analyzer (found on PATH,
-- installed via nix in rust.nix) and adds inlay hints, runnables/debuggables,
-- code actions and macro expansion. Do NOT also configure rust_analyzer via
-- lspconfig/mason-lspconfig -- rustaceanvim owns that and they would conflict.
return {
  'mrcjkb/rustaceanvim',
  version = '^6',
  lazy = false, -- this plugin is already lazy-loaded per filetype
}
