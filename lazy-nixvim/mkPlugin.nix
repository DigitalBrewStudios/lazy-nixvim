{ humanName, name }:
let
  humanName' = humanName;
  name' = name;
in
{
  name ? name',
  humanName ? humanName',
  config ? [ ],
}:
{
  options.lazy-nixvim.plugins.${name}.enable = config.lib.lazy-nixvim.mkEnablePluginWith {
    name = humanName;
  };

  config.programs.nixvim.plugins.${name}.lazyLoad = {
    enable = true;
    inherit config;
  };
}
