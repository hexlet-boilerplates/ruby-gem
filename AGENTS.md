# AGENTS.md

Шаблон гема на Ruby. Код лежит в `lib/`, тесты в `test/`, описание гема в `sample_gem.gemspec`.

## Команды

| Команда | Что делает |
| --- | --- |
| `make install` | Ставит гемы через Bundler и git-хуки |
| `make test` | Запускает тесты через `rake test` |
| `make lint` | Проверяет код через RuboCop |
| `make lint-fix` | Исправляет то, что RuboCop умеет исправить сам |
| `make update-deps` | Обновляет гемы в интерактивном режиме |

## Проверки

`make lint` также проверяет Markdown (`rumdl`), опечатки (`typos`) и workflow GitHub Actions (`jactionlint`). `make install` ставит git-хуки hk, перед коммитом они запускают `make lint`, перед push `make test`.

Перед завершением задачи запусти `make lint` и `make test`, обе команды должны проходить.

## Окружение

Инструменты и их версии задаёт `mise.toml`, ставит их `mise install`.
