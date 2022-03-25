*** Settings ***
Documentation         Dokumentacja dla zestawu testowego (Test Suite)
...                   Opis jakie testy zostana przeprowadzone, jakie wymagania sprawdzone
...                   Kto jest odpowiedzialny za przygotowanie testow, za przeglad (review), kto bedzie utrzymywal test
...                   Historia zmian testu

Test Setup          Uruchomienie Aplikacji
Test Teardown       Zamknięcie Aplikacji

*** Variables ***

${PROPER PIN}       True
${WRONG PIN}        False
${TIMEOUT(s)}       10
${PROPER CARD NUMBER}   True
${WRONG CARD NUBER}     False
${PROPER CARD VENDOR}   True
${WRONG CARD VENDOR}    False
${POSSIBLE DEBIT}       True
${IMPOSSIBLE DEBIT}     False
${GET MONEY}       Wybierz pieniądze
${BALANCE REQUEST}     Wyświetl saldo
@{OPTION}=       ${GET MONEY}    ${BALANCE REQUEST}
${REFUSE}=      "Odmowa dostępu"
${KEEP THE CARD}    "Karta zaostała zatrzymana"


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


Akceptacja karty właściwego dostawcy
    [Documentation]    Sprawdzenie czy karta klienta jest obsługiwana
...                Karta klienta jest obsługiwana
...                Aplikacja pozwala wpisać nr PIN

    [Setup]     Uruchomienie Aplikacji
    
    Akceptuj kartę  ${PROPER CARD VENDOR}
    Aplikacja powinna porosić o wpisanie PIN
    [Teardown]    Zamknięcie Aplikacji
    

Odrzucenie karty innego dostawcy
    [Documentation]    Sprawdzenie czy karta klienta jest obsługiwana
    ...                Karta klienta nie jest obsługiwana
    ...                Aplikacja nie pozwala wpisać nr PIN i wyświetla komunikat o odmowie dostępu
    ...                 Aplikacja zwraca kartę
    [Setup]     Uruchomienie Aplikacji
    Odrzuć kartę  ${WRONG CARD VENDOR}
    Apk powinna zwróć kartę
    Apk powinna wyświetlić komunikat ${REFUSE}

Akceptacja poprawnego PIN
    [Documentation]    Sprawdzenie czy pin jest poprawny
...                    Karta klienta jest obsługiwana
...                    Aplikacja pozwala wpisać nr PIN
...                    Pin został poprawnie zweryfikowany
...                    Aplikacja wyświetla jedną z dwóch opcji: "wybierz"/"pokaż saldo"


    [Setup]     Uruchomienie Aplikacji
    [Setup]     Akceptuj kartę  PROPER CARD VENDOR
                Akceptuj pin  PROPER PIN
                Apk powinna wyświetl co chcesz zrobić  @{OPTION}


Odrzucenie błędnego pinu
    [Documentation]    Sprawdzenie czy pin jest poprawny
...                Karta klienta jest obsługiwana
...                Aplikacja pozwala wpisać nr PIN
...                 Pin został negatywnie zweryfikowany
...                 Aplikacja wyświetla komunikat o odmowie dostępu
...                 (Aplikacja inkrementuje wartość licznika prób połączeń o 1 (???)
...                 Jeśli wartość licznika < 3 aplikacja zwraca kartę (???)) - tego nie testujemy


    [Setup]     Uruchomienie Aplikacji
                Akceptuj kartę  
                Odrzuć pin     
                Apk powinna wyświetlić komunikat    ${REFUSE}
                

Zablokowanie Karty
    [Documentation]    Zablokowanie karty klienta po 3 niudanych próbach wpisania kodu PIN.
...                Karta klienta zostaje zablokowana.
...                Wyświetlenie informacji o zablokowaniu karty.
    [Setup]     Uruchomienie Aplikacji
                Potrzykroć odrzuć pin
                Powinna wyświetl komunikat ${REFUSE} ${KEEP THE CARD}

# Dotąd zrobiłem - Paweł


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
Akceptuj kartę
    Włóż kartę      ${PROPER CARD VENDOR}

Odrzuć kartę
    Włóż kartę      ${WRONG CARD VENDOR}

    
Akceptuj pin
    Weryfikuj pin   ${PROPER PIN}

Odrzuć pin       
    Weryfikuj pin       ${WRONG PIN}


Potrzykroć odrzuć pin
    Akceptuj kartę  
    Odrzuć pin
    Akceptuj kartę 
    Odrzuć pin
    Akceptuj kartę
    Odrzuć pin





