defmodule FeaturesConfigurations do
  use WhiteBread.SuiteConfiguration

  context_per_feature namespace_prefix: WhiteBread.Acceptance, 
                      entry_path: "features/"
end
