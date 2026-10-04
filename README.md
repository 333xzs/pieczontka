# Generator pieczątek IRS

Statyczna strona (HTML + JS, bez serwera i bez zależności). Wpisujesz imię i nazwisko, wybierasz stopień i czcionkę podpisu, pobierasz PNG **698 × 288 px** z **przezroczystym tłem**.

## Uruchomienie

- **Lokalnie:** otwórz `index.html` w Chrome/Edge. Gdyby czcionki się nie ładowały, uruchom `uruchom.bat` (potrzebuje Pythona).
- **Online (dla całego serwera):** wrzuć cały folder na darmowy hosting statyczny, np. Netlify (przeciągnij folder na https://app.netlify.com/drop), GitHub Pages albo Cloudflare Pages.

## Jak to działa

1. **Stopień** – 5 przycisków; stopień zmienia tylko tekst pod tytułem (nie czcionkę). Listę stopni zmienisz w `RANKS`.
2. **Imię i nazwisko** – wpisujesz, a w galerii czcionek każda pokazuje właśnie to imię.
3. **Czcionka** – galeria 62 czcionek z podglądem, wyszukiwarka i kategorie. Jeśli czcionka nie ma polskich znaków, strona po cichu zamienia je na zwykłe (ł→l, ś→s itd.). Własną czcionkę wgrasz kafelkiem „Wgraj własną czcionkę” (.ttf/.otf/.woff), zapamiętuje się w przeglądarce.
4. **Dopasowanie** – rozmiar, grubość kreski, przesunięcie i obrót podpisu (podpis jest zawsze czarny). Wybór czcionki i dopasowanie są pamiętane.

Plik ma zawsze rozmiar **698 × 288 px** (skala równomierna z oryginału 1608 × 669, bez rozciągania).

## Pliki

| Plik | Do czego |
|---|---|
| `index.html` | cała aplikacja; na górze skryptu jest lista `RANKS` (stopnie) i `FONTS` (czcionki) |
| `logo.js` / `logo.png` | logo IRS (przezroczyste) wbudowane jako data-URI, żeby eksport PNG działał też z pliku lokalnego |
| `fonts/` | czcionki podpisów (Google Fonts, licencja OFL) + Arimo jako zapas dla tytułu |

## Zmiany

- **Stopnie:** w tablicy `RANKS` w `index.html` zmień `label` (przycisk) i `text` (linia pod tytułem).
- **Czcionka dla wszystkich na hostingu:** wrzuć plik `.ttf` do `fonts/` i dopisz wiersz `['NazwaPliku','Nazwa w liście','kategoria']` w tablicy `FONTS`.
- **Rozmiar pliku:** stała `OUT` w `index.html`.

## Układ 1:1

Pozycje i rozmiary tytułu, linii ze stopniem i logo zostały zmierzone na oryginalnej pieczątce (tytuł: x 663–1571, dół 240; stopień: szerokość 649, linia bazowa 298). Czcionka tytułu i stopnia to Arial Bold (w razie braku Ariala: Arimo z `fonts/`).
