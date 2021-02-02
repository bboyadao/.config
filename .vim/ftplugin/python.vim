" Check Python files with flake8, pylint, mypy.
let b:ale_linters = {'python': ['flake8', 'pylint', 'pylint_django', 'mypy']}

" Fix Python files with autopep8, yapf, black.
let b:ale_fixers = {
      \ 'python': ['black', 'nayvy#ale_fixer', 'autopep8', 'isort', 'yapf', 'autopep8']
      \ }

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

let g:ale_python_pylint_options = '--load-plugins pylint_django --django-settings-module=stratioAI.local'

" Auto import
let g:ale_completion_autoimport = 1
g:ale_python_autoimport_executable = 'autoimport'
g:ale_python_autopep8_use_global = 1
g:ale_python_black_executable = 'black'
g:ale_python_black_use_global = 1

g:ale_python_flake8_executable = 'flake8'
g:ale_python_mypy_executable = 'mypy'
g:ale_python_mypy_use_global = 1
