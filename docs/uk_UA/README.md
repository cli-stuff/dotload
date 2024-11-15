<!-- markdownlint-disable no-inline-html first-line-h1 -->

[![GitHub Release Date][github-release-date]][github-release-page]
[![GitHub workflow status][github-workflow-status]][github-workflow-runs]
[![GitHub License][github-license]](../../LICENSE)
![Made with love][made-with-love]
![GitHub Repo stars][github-stars]

<!-- PROJECT LOGO -->
<div align="center">
  <a href="https://github.com/cli-stuff/dotload">
    <!-- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#specifying-the-theme-an-image-is-shown-to -->
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="../../public/banner-dark.png" alt="Баннер">
      <source media="(prefers-color-scheme: light)" srcset="../../public/banner-light.png" alt="Баннер">
      <img src="../../public/banner-dark.png" alt="Баннер">
    </picture>
  </a>

  <h3 align="center">dotload</h3>

  <p align="center">
    <p>
    <b>dotload</b> - це <b>простий</b>, <b>інтуїтивний</b> та <b>швидкий</b>⚡ інструмент для встановлення конфігурацій (дотфайлів) та інших необхідних інструментів на будь-яку машину!</p>
    <a href="#%EF%B8%8F-Встановлення"><b>Встановлення</b></a>
    ·
    <a href="https://github.com/cli-stuff/dotload/issues/new?labels=bug&template=bug_report.md"><b>Повідомити про помилку</b></a>
    ·
    <a href="https://github.com/cli-stuff/dotload/issues/new?labels=enhancement&template=feature_request.md"><b>Запропонувати функцію</b></a>
  </p>
</div>

<a href="../../README.md"><img
  height="20"
  src="../../public/flag-us.png"
  alt="English">
</a>
<a href="../pl/README.md"><img
  height="20"
  src="../../public/flag-pl.svg"
  alt="Polish">
</a>

## ℹ️ Про проект

![Screenshot](../../public/screenshot-dark.png#gh-dark-mode-only)
![Screenshot](../../public/screenshot-light.png#gh-light-mode-only)

`dotload` працює шляхом клонування репозиторію `dotfiles` з **GitHub** вказаного користувача

Цей інструмент було створено для того, щоб **максимально спростити** встановлення дотфайлів, необхідних інструментів для розробки (таких як **nodejs**, **php**, тощо.) та інших пакетів.

### 🤔 Як це працює?

Цей інструмент робить символічні посилання на ваші дотфайли з `~/.dotload` в папку `$HOME`

Він також може робити символічні помилання на папки (разом з вкладеними файлами), назва яких починається на крапку, наприклад `.configs`

> [!WARNING]
> Дотфайли з ідентичними назвами безвідворотньо перезапишуться на нові з вашого репозиторію!

Наприклад якщо у вас на комп'ютері та у репозиторії є файл `~/.bashrc` - то він перезапишеться новим з репозиторію. Перед тим як їх клонувати, переконайтесь що вони ваші, або ви зробили резервну копію попередніх конфігурацій

## ⚙️ Встановлення

Ви можете встановити `dotload` за допомогою цих пакетних менеджерів:

<details>
  <summary><b>apt (PPA)</b></summary>
  <br/>

  З цим методом ви отримуватимете подальші оновлення

  ```bash
  sudo add-apt-repository ppa:salumin/tools
  sudo apt update
  sudo apt install dotload
  ```

</details>

<details>
  <summary><b>Homebrew</b></summary>
  <br/>

  За допомогою [**brew**](https://brew.sh/) ви можете встановити цей інструмент на **macOS** (а також на **Linux**)

  > ℹ️ Примітка: Якщо у вас не встановлений [**brew**](https://brew.sh/), завантажте його прямо **зараз** за допомогою цієї команди:

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  <hr/>

  📥 **Встановлення**:

  ```bash
  brew tap okineadev/dotload
  brew install dotload
  ```

</details>

<details>
  <summary><b>З install.sh (Рекомендовано) ✅</b></summary>
  <br/>

  З цим методом, ви можете встановити **dotload** практично на **будь-якій системі**, в тому числі й на **Termux**

  📥 **Встановлення**:

  ```bash
  curl -sL https://cutt.ly/dotload-install | bash
  ```

  🗑️ **Видалення**:

  ```bash
  sudo rm $PREFIX/bin/dotload && hash -r
  ```

  > ℹ️ Примітка: Якщо ви хочете видалити цей інструмент з **Termux**, вам потрібно виконати вище вказану команду без `sudo`

</details>

<details>
  <summary><b>З джерел (цього репозиторію)</b></summary>
  <br/>

  З цим методом ви можете з легкістю модифікувати встановлення, та бути впевненим в безпеці.

  Кроки для встановлення з джерел:

  1. Клонуйте репозиторій

  ```bash
  git clone https://github.com/cli-stuff/dotload.git --depth=1
  ```

  2. Перейдіть в папку проекту

  ```bash
  cd dotload
  ```

  3. Встановіть інструменти

  Якщо у вас не встановлений `make`, вам потрібно його встановити:

  ```bash
  sudo apt install make
  ```

  Також наявна підтримка [**task**](https://taskfile.dev/).

  📥 **Встановлення**:

  ```bash
  make install
  ```

  > 💡 Порада: якщо ви надаєте перевагу використанню сучаснішого [**task**](https://taskfile.dev/) замість [**GNU make**](https://www.gnu.org/software/make/), можете скористатись цією командою:

  ```bash
  task install
  ```

  🗑️ **Видалення**:

  ```bash
  make uninstall
  # Або
  task uninstall
  ```

</details>

<details>
  <summary><b>Termux</b></summary>
  <br/>

  З цим методом ви отримуватимете подальші оновлення

  ```bash
  # Add Termux User Repository
  pkg install tur-repo
  pkg update && pkg install dotload
  ```

</details>

Також ви можете запустити його без встановлення на **будь-якій** ОС за допомогою цієї команди:

```bash
bash <(curl -sL https://cutt.ly/dotload) @username
```

### Таблиця сумісності

| <div><img src="https://upload.wikimedia.org/wikipedia/commons/f/f1/Icons8_flat_linux.svg" alt="Linux logo" width="30"/></div> **Linux** | <div><img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Termux.svg" alt="Termux logo" width="30"/></div> **Termux** | <div><img src="../../public/macos-dark-logo.svg#gh-light-mode-only" alt="macOS logo" width="30"/><img src="../../public/macos-light-logo.svg#gh-dark-mode-only" alt="macOS logo" width="30"/></div> **macOS** | <div><img src="https://github.com/cli-stuff/dotload/assets/81070564/99544c04-51e7-41b5-95f7-0828cfc97617" alt="Windows logo" width="30"/></div> **Windows** (on [msys shell](https://www.msys2.org/)) |
| :-: | :-: | :-: | :-: |
| ✅ | ✅ | ✅ | ✅ |

## 🚀 Використання

```bash
dotload @username
dotload @username/repo_name
dotload https://github.com/username/dotfiles.git
```

Де `username` - це **ім'я користувача GitHub**, чиї дотфайли ви хочете клонувати.

`repo_name` - Назва вашого репозиторію з дотфайлами, якщо не вказано - за замовчуванням буде використовуватись назва `dotfiles`

> [!WARNING]
> Ім'я користувача не може містити емодзі, пробіли або інші нестандартні символи

### Розширене використання

```bash
dotload @username branch_name
```

> [!TIP]
> Ви також можете використовувати прапорці `-b` або `--branch`:

```bash
dotload @<username> [--branch branch_name | -b branch_name]
dotload <repo_url> [--branch branch_name | -b branch_name]
```

Де `branch_name` - назва гілки сховища, яку ви хочете клонувати. Якщо не вказано, буде використано гілку за замовчуванням. Це може бути корисно, якщо у вас є кілька сценаріїв використання машини

---

Використовуйте прапорець `--help` для отримання довідки:

```bash
dotload --help
# Сторінка довідки...
```

Також наявна підтримка `manpages`:

```bash
man dotload
```

### Кастомні скрипти встановлення

Ви також можете додати скрипт інсталяції до вашоро репозиторію `dotfiles`, щоб повністю автоматизувати встановлення та отримати більше можливостей

Інсталяційний файл може мати наступні назви та розташування:

- _install.sh_
- _install_
- _bootstrap.sh_
- _bootstrap_
- _script/bootstrap_
- _setup.sh_
- _setup_
- _script/setup_

Якщо жоден з цих файлів не знайдено, будь-які файли або папки у вибраному вами репозиторії dotfiles, що починаються з `.`, для них будуть створені символічні посилання в директорії `$HOME`.

### Конфігурація

Ви також можете **вказати власну назву скрипта інсталяції**
або зробити його необов'язковим у файлі `dotload.conf`, для цього прочитайте [**документацію по `dotload.conf**](dotload_conf.md)

## 🛣️ Дорожня карта

- [ ] Додати багатомовну підтримку **README.md**
  - [x] 🇺🇦 Українська
  - [x] 🇵🇱 Польська
  - [ ] 🇩🇪 Німецька
- [ ] Написати інструкцію для розробників (по збірці пакету)
- [ ] Переписати функцію створення **deb-пакетів** для підтримки різних версій [**Ubuntu**](https://ubuntu.com/) - в процесі 🚧
- [ ] Додати варіанти встановлення, такі як **Snap**, **AUR**, **RPM**
  - [x] **Snap**
  - [ ] **AUR**
  - [ ] **RPM**

## 🤝 Внески

Внески - це те, що робить спільноту з відкритим вихідним кодом таким чудовим місцем для навчання, натхнення та творчості. Будь-який ваш внесок **дуже цінний**.

Ви можете моментально розпочати розробку в [**GitHub Codespaces**][codespaces-link]

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/cli-stuff/dotload?quickstart=1)

Цей репозиторій містить ⚡[**prebuilds**][about-prebuilds], які дозволяють **пропустити** встановлення пакетів і інструментів.

Або скористайтеся звичайним способом на комп’ютері:

1. Форкніть проект
2. Створіть гілку з вашими змінами (`git checkout -b feature/AmazingFeature`)
3. Зафіксуйте ваші зміни (`git commit -m 'Add some AmazingFeature'`)
4. Надішліть зміни (`git push origin feature/AmazingFeature`)
5. Відкрийте **PR** (Pull Request)

Будь ласка, переконайтеся, що ви оновили тести належним чином.

Також, будь ласка, прочитайте наш [**Кодекс поведінки**](../../CODE_OF_CONDUCT.md) і дотримуйтесь його у всіх ваших взаємодіях з проектом.

## 📝 Ліцензія

Цей проект ліцензію [**MIT**][mit-license-link].

Дивіться [**LICENSE**](../../LICENSE)

## 📨 Контакти

**Telegram:** [**@okineadev**][telegram-link]

## ❤️ Підтримка

Цей проект є повністю **безкоштовним** та з **відкритим кодом**.
Якщо вам сподобався цей інструмент - я буду дуже вдячний, якщо ви зможете підтримати мене фінансово

Ось реквізити для переказів:

- 🍩 **Donatello**: <https://donatello.to/okineadev>
- 💎 **TON гаманець**: `UQBaBIBtKJpdwc4jKSGd70LZyQnEf-Nx5edzZlZAAGkHnZ7E`

[github-release-date]: https://img.shields.io/github/release-date/cli-stuff/dotload
[github-release-page]: https://github.com/cli-stuff/dotload/releases/latest
[github-workflow-status]: https://github.com/cli-stuff/dotload/actions/workflows/release.yml/badge.svg
[github-workflow-runs]: https://github.com/cli-stuff/dotload/actions/workflows/release.yml
[github-license]: https://img.shields.io/github/license/cli-stuff/dotload
[made-with-love]: https://img.shields.io/badge/made_with-%E2%9D%A4%EF%B8%8F-white
[github-stars]: https://img.shields.io/github/stars/cli-stuff/dotload
[codespaces-link]: https://github.com/features/codespaces
[about-prebuilds]: https://docs.github.com/en/codespaces/prebuilding-your-codespaces/about-github-codespaces-prebuilds
[telegram-link]: https://t.me/okineadev 'Telegram link'
[mit-license-link]: https://opensource.org/license/MIT
