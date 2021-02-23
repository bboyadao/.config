" Check Python files with flake8, pylint, mypy.
let b:ale_linters = {'python': ['flake8', 'pylint', 'pyright',  'pylint_django', 'mypy']}

" Fix Python files with autopep8, yapf, black.
let b:ale_fixers = {
      \ 'python': [ 'isort', 'yapf', 'autopep8', 'black']
      \ }

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

let g:ale_python_pylint_options = '--load-plugins pylint_django --django-settings-module=stratioAI.local'

" Auto Python Format
let g:ale_python_autoimport_executable = 'autoimport'
let g:ale_python_black_executable = 'black -l 80 --experimental-string-processing'
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_autopep8_executable = 'autopep8'
let g:ale_python_mypy_executable = 'mypy'
let g:ale_python_black_use_global = 1
let g:ale_python_flake8_use_global = 1
let g:ale_python_autopep8_use_global = 1
let g:ale_python_mypy_use_global = 1
