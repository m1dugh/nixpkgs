{
  lib,
  fetchFromGitHub,
  stdenv,
}:

stdenv.mkDerivation (finalAttrs: rec {
  pname = "reflex";
  version = "3.2.11";

  src = fetchFromGitHub {
    owner = "Genivia";
    repo = "RE-flex";
    rev = "ref/tags/v${version}";
    hash = "sha256-ZVa5C1JNmkzz2NhvQEhdVAmT2tBi/PfCEHtWQ/jxf2w=";
  };

  enableParallelBuilding = true;

  outputs = [
    "out"
    "bin"
    "dev"
  ];

  meta = {
    description = ''
      A high-performance C++ regex library and lexical analyzer generator with Unicode support.
    '';
    longDescription = ''
      A high-performance C++ regex library and lexical analyzer generator with Unicode support.
      Extends Flex++ with Unicode support, indent/dedent anchors, lazy quantifiers, functions for lex and syntax error reporting and more.
      Seamlessly integrates with Bison and other parsers.
    '';
    homepage = "https://www.genivia.com/reflex.html";
    license = lib.licenses.bsd3;
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [ m1dugh ];
    mainProgram = "reflex";
    changelog = "https://github.com/Genivia/RE-flex?tab=readme-ov-file#changelog";
  };

})
