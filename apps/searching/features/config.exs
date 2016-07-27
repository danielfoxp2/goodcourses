defmodule FeaturesConfigurations do
  use WhiteBread.SuiteConfiguration

  context_per_feature namespace_prefix: WhiteBread.Test, 
                      entry_path: "features/f1"

  context_per_feature namespace_prefix: WhiteBread.Test2, 
                      entry_path: "features/f2"
end
