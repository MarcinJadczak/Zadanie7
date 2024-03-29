Feature: Proces wyszukiwania i zakupu produktu w sklepie internetowym Media Markt

Background:
    Given Użytkownik jest zalogowany do konta w sklepie internetowym Media Markt.

Scenario: Wyszukiwanie produktu
    Given Użytkownik znajduje się na stronie głównej sklepu
    When Użytkownik wyszukuje produkt o nazwie "Smartfon"
    And Użytkownik wybiera filtr "Marka: Samsung"
    And Użytkownik klika przycisk "Szukaj"
    Then Użytkownik otrzymuje wyniki wyszukiwania

Scenario: Dodawanie produktu do koszyka
    Given Użytkownik przegląda wyniki wyszukiwania
    When Użytkownik klika na wybrany produkt, który spełnia kryteria
    And Użytkownik wybiera ilość produktu do zakupu
    And Użytkownik dodaje produkt do koszyka
    Then Produkt jest dodany do koszyka

Scenario: Przechodzenie do procesu zamówienia
    Given Użytkownik przegląda zawartość koszyka
    When Użytkownik kliknie przycisk "Przejdź do zamówienia"
    Then Użytkownik jest przeniesiony do procesu zamówienia

Scenario: Wprowadzenie danych dostawy i płatności
    Given Użytkownik znajduje się na stronie zamówienia
    When Użytkownik wprowadza adres dostawy oraz dane płatności
    And Użytkownik potwierdza zamówienie, klikając przycisk "Złóż zamówienie"
    Then Zamówienie zostaje złożone

Scenario: Walidacja zakupu
    Given Użytkownik otrzymuje potwierdzenie zamówienia
    When Użytkownik sprawdza szczegóły zamówienia, takie jak numer zamówienia i planowana data dostawy
    And Użytkownik upewnia się, że informacje o produkcie, ilości, cenie i dostawie są poprawne
    Then Zakup jest zwalidowany