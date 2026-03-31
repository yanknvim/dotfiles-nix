{ inputs }:
final: prev: 
let
    skkeleton = inputs.skkeleton;
in {
    vimPlugins = prev.vimPlugins // {
        skkeleton = prev.vimUtils.buildVimPlugin {
            pname = "skkeleton";
            version = "unstable-${builtins.toString skkeleton.lastModified}";
            src = skkeleton;
        };
    };
}
