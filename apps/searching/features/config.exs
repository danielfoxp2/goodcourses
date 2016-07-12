defmodule FeaturesConfigurations do
  use WhiteBread.SuiteConfiguration

  context_per_feature namespace_prefix: WhiteBread.Test, 
                      entry_path: "features/"
end
