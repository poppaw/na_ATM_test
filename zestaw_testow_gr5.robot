*** Settings ***
Documentation         Dokumentacja dla zestawu testowego (Test Suite)
...                   Opis jakie testy zostana przeprowadzone, jakie wymagania sprawdzone
...                   Kto jest odpowiedzialny za przygotowanie testow, za przeglad (review), kto bedzie utrzymywal test
...                   Historia zmian testu

Test Setup          Uruchomienie Aplikacji
Test Teardown       Zamknięcie Aplikacji

*** Variables ***

${PROPER PIN}
${WRONG PIN}
${TIMEOUT}
${PROPER CARD NUMBER}
${WRONG CARD NUBER}
${PROPER CARD VENDOR}   boolean


*** Test Cases ***
Nazwa pierwszego testu
    [Documentation]    Dokumentacja do testu
    ...                Zapisujemy w jednym zdaniu jaki jest cel testu
    ...                Wypisujemy jakie sa warunki poczatkowe (preconditions) dla testu
    ...                Wypisujemy jaki jest rezultat testu
    [Setup]     Przygotowanie testu pierwszego
    Pierwsza akcja
    Pierwsza weryfikacja
    [Opcjonalne] Przygotowanie do drugiej akcji
    Druga akcja
    Druga weryfikacja
    [Teardown]    Sprzatanie po tescie pierwszym


Poprawny dostawca karty
    [Documentation]    Sprawdzenie czy karta klienta jest obsługiwana
...                Karta klienta jest obsługiwana
...                Aplikacja pozwala wpisać nr PIN

    [Setup]     Uruchomienie Aplikacji
    
    Weryfikuj kartę     ${PROPER CARD VENDOR=TRUE}
    Karta jest akceptowalna
    Aplikacja prosi o PIN
    [Teardown]    Zamknięcie Aplikacji
    

Niepoprawny dostawca karty
    [Documentation]    Sprawdzenie czy karta klienta jest obsługiwana
    ...                Karta klienta nie jest obsługiwana
    ...                Aplikacja nie pozwala wpisać nr PIN i odrzuca kartę
    [Setup]     Uruchomienie Aplikacji
    Weryfikuj kartę     ${PROPER CARD VENDOR=FALSE}
    Wyświetlenie informacji o tym, że karta nie jest obsługiwana.

Zablokowanie Karty
    [Documentation]    Zablokowanie karty klienta po 4 niudanych próbach wpisania kodu PIN.
...                Karta klienta zostaje zablokowana.
...                Wyświetlenie informacji o zablokowaniu karty.
    [Setup]     Uruchomienie Aplikacji
    Karta jest akceptowalna.
    Weryfikacja kodu PIN.
    Podanie złego kodu PIN.
    Zablokowanie karty klienta po 4 nieudanych próbach.
    Wyświetlenie informacji o zablokowaniu karty.
    [Teardown]    Zamknięcie Aplikacji



Poprawny pin
    [Documentation]    Sprawdzenie czy pin jest poprawny
...                Karta klienta jest obsługiwana
...                Aplikacja pozwala wpisać nr PIN
...                 Pin został poprawnie zweryfikowany


    [Setup]     Uruchomienie Aplikacji
                Weryfikacja     ${PROPER PIN}


Niepoprawny pin
    [Documentation]    Sprawdzenie czy pin jest poprawny
...                Karta klienta jest obsługiwana
...                Aplikacja pozwala wpisać nr PIN
...                 Pin został poprawnie zweryfikowany


    [Setup]     Uruchomienie Aplikacji
                Weryfikacja     ${WRONG PIN}


Klient żąda gotówki wystarczaje zasoby na koncie wystarczających zasobach w bankomacie
    [Documentation]    
...                Po spełnieniu wymagań z test casów nr 1 i2 , 
...     ekran wyświetla opcje "sprawdź stan konta" oraz "wypłata gotówki".
... Klikam opcję wypłata gotówki. 
... Ekran wyświetla opcje (50, 100, 200, 300, 400, 500, 750, 1000) 
... lub podając inną kwotę (wielokrotność 50).
    
    Wybieram kwotę      ${Amount=50}
    Bankomat wypłaca    ${Amount=50}    ${zabieram gotówkę=TRUE}
    Proszę o wydruk
    Bankomat drukuje potwierdzenie
    Odbieram kartę

    [SETUP]

Potwierdzenie transakcji
    [Documentation]     Wybranie opcji o potwierdzeniu wykonania transakcji.
... Wyświetlenie informacji o stanie konta przed transakcją.
... Wyświetlenie informacji o kwocie pobranej.
... Wyświetlenie informacji o kwocie pozostałej na koncie.
    [Setup]     Uruchomienie Aplikacji
    Karta jest akceptowalna.
    Wybranie opcji potwiedzenia transakcji.
    Wyświetlenie informacji o stanie konta.
    [Teardown]  Zamknięcie Aplikacji
    




TestCase4 Za mało środków na koncie klienta

TEstCase5 Wystarczająco środków na koncie klienta

Za mało pieniędzy w bankomacie

Żadana kwota nie jest wielkorotnością 50

Klient z kartą bez debetu żąda kwoty większej niż stan konta

Klient z kartą z debetem żąda kwoty większej niż stan konta

Poprawne wyświetlenie stanu konta

Klient odebrał gotówkę

Klient nie odebrał gotówki



*** Keywords ***
Sprawdz typ karty
    
Sprawdz poprawosc pinu

Sprawdz stan konta uzytkownika

Sprawdz stan pieniężny bankomatu

Przygotowanie testu pierwszego
    Uruchomienie Aplikacji
    Akcja pierwszej w ramach przygotowania

Pierwsza akcja
    Wykonanie konkretnych czynnosci

Pierwsza weryfikacja
    Dokladne sprawdzenie czynnosci
