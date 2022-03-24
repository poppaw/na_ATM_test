Wypłata gotówki opcja 1
[Setup]             przy wystarczających zasobach  na koncie, wystarczających zasobach w bankomacie, karta inna niż debetowa

[Documentation]     Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                 Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50)
...                 Wybieram kwotę 50 zł
...                 Bankomat wypłaca 50 zł, zabieram gotówkę
...                 Proszę o wydruk
...                 Bankomat drukuje potwierdzenie
...                 Odbieram kartę
[Teardown] : Bankomat wraca do ustawień początkowych z testcase 1 i 2


Wypłata gotówki opcja 2
[Setup]             przy wystarczających zasobach na koncie,wystarczających zasobach w bankomacie, karta inna niż debetowa

[Documentation]     Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                 Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                 Wybieram kwotę 49 zł
...                 Bankomat  pokazuję informację o dostępnych nominałach PASS
...                 Wybieram poprawną kwotę 50 zł
...                 Proszę o wydruk
...                 Bankomat drukuje potwierdzenie
...                 Odbieram kartę
[Teardown] : Bankomat wraca do ustawień początkowych z testcase 1 i 2


Wypłata gotówki opcja 3
[Setup]                 przy  wystarczających zasobach  na koncie  wystarczających zasobach w bankomaciem, karta inna niż debetowa

[Documentation]         Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                     Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                     Wybieram kwotę 10 050 zł
...                     Bankomat  pokazuję informację o maksymalnej wartości wypłaconej gotówki 9999zł PASS
...                     Wychodzę z aplikacji bankomatu
...                     Odbieram kartę w mniej niż 10 sekund
[Teardown]  Bankomat wraca do ustawień początkowych z testcase 1 i 2




Wypłata gotówki opcja 4
[Setup]                 wystarczających zasobach  na koncie wystarczających zasobach w bankomacie karta inna niż debetowa

[Documentation]         Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                     Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                     Wybieram kwotę 10 050 zł PASS
...                     Bankomat  pokazuję informację o maksymalnej wartości wypłaconej gotówki 9999zł
...                     Wychodzę z aplikacji bankomatu
...                     Odbieram kartę w mniej niż 10 sekund
[Teardown]         Bankomat wraca do ustawień początkowych z testcase 1 i 2


Wypłata gotówki opcja 5
[Setup]                 przy niewystarczających zasobach  na koncie wystarczających zasobach w bankomacie karta inna niż debetowa

[Documentation]         Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                     Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                     Wybieram kwotę 100 zł
...                     Bankomat  pokazuję informację o braku środków na koncie
...                     Wychodzę z aplikacji bankomatu
...                     Odbieram kartę w mniej niż 10 sekund
[Teardown]              Bankomat wraca do ustawień początkowych z testcase 1 i 2

Wypłata gotówki opcja 6
[Setup]                 przy wystarczających zasobach  na koncie, niewystarczających zasobach w bankomacie, karta inna niż debetowa

[Documentation]         Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                     Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                     Wybieram kwotę 100 zł
...                     Bankomat  pokazuję informację o braku środków na w bankomacie
...                     Wychodzę z aplikacji bankomatu
...                     Odbieram kartę w mniej niż 10 sekund
[Teardown]              Bankomat wraca do ustawień początkowych z testcase 1 i 2


Wypłata gotówki opcja 7
[Setup]                 przy: niewystarczających zasobach  na koncie, wystarczających zasobach w bankomacie, karta  debetowa

[Documentation]         Po spełnieniu wymagań z test casów nr 1 i2 , ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
...                     Klikam opcję wypłata gotówki. Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) lub podając inną kwotę (wielokrotność 50).
...                     Wybieram kwotę 100 zł
...                     Bankomat wypłaca 100 zł, zabieram gotówkę
...                     Proszę o wydruk
...                     Bankomat drukuje potwierdzenie
...                     Odbieram kartę
[Teardown]              Bankomat wraca do ustawień początkowych z testcase 1 i 2





