local code_runner = require('code_runner')

code_runner.setup {
  mode = "term",
  focus = true,
  term = {
    position = "bo",
    size = 8,
  },
  filetype = {
    c = "cd $dir && gcc -O3 -Wall -o $fileNameWithoutExt $fileName && $dir/$fileNameWithoutExt && rm $fileNameWithoutExt",
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    python = "python -u",
    rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
    golang = "go run $fileName",
  },
}
