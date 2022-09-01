local code_runner = require('code_runner')

code_runner.setup {
  mode = "term",
  focus = true,
  term = {
    position = "vert",
    size = 36,
  },
  filetype = {
    c = "cd $dir && gcc -O3 -Wall -o $fileNameWithoutExt $fileName && ./$fileNameWithoutExt && rm $fileNameWithoutExt"
  },
}
