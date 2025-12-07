{ lib, ... }:
rec {
  lsWithCond =
    cond: path:
    lib.pipe path [
      builtins.readDir
      (lib.filterAttrs cond)
      builtins.attrNames
      (map (name: path + "/${name}"))
    ];

  lsFile = lsWithCond (n: t: t == "regular");

  lsDir = lsWithCond (n: t: t == "directory");

  lsFileRecursively = path: lsFile path ++ builtins.concatLists (map lsFileRecursively (lsDir path));

  lsSubmodule = lsWithCond (
    n: t: (lib.hasSuffix ".nix" n && t == "regular" && n != "default.nix") || t == "directory"
  );
}
