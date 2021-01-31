" Check Python files with flake8, pylint, mypy.
let g:ale_linters = ['flake8', 'mypy', 'pylint', 'pylint_django']

" Fix Python files with autopep8, yapf, black.
let g:ale_fixers = {
      \ 'python': ['nayvy#ale_fixer', 'autopep8', 'isort', 'yapf', 'black'],
      \ }

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

" Auto import
let g:ale_completion_autoimport = 1
g:ale_python_autoimport_executable = 'autoimport'
g:ale_python_autopep8_use_global = 1
g:ale_python_black_executable = 'black'
g:ale_python_black_use_global = 1

g:ale_python_flake8_executable = 'flake8'
g:ale_python_mypy_executable = 'mypy'
g:ale_python_mypy_use_global = 1
