defmodule FeaturesConfigurations do
  use WhiteBread.SuiteConfiguration

  context_per_feature namespace_prefix: GrandCourses,
                      entry_path: "features/test_one"
end
