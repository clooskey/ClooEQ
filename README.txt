    ClooEq 0.1.0-2017 (c) by Hubert Weydmann

----------------------------------------------------------------------------

    ClooEq to program działający na zasadzie korektora graficznego 
posiadającego cztery filtry: dwa filtry butterwortha oraz dwa typu "bell".

----------------------------------------------------------------------------

        I - Główne założenia programu:

1. Możliwość uruchomienia w środowisku programistycznym MATLAB w wersji 
   R2016a i wyższej bez konieczności posiadania jakichkolwiek 
   pakietów 'toolbox'. (wsteczna kompatybilność z wersjami starszymi 
   niż R2016a nie może być jednak zagwarantowana)

2. Możliwość nieograniczonej ingerencji w parametry takie jak: 

---filtry dolno- i górnozaporowe:
-częstotliwość graniczna,
-rząd,

---filtry 'bell':
-dobroć,
-częstotliwość środkowa.

3. Interfejs graficzny przeznaczony jest do pracy w zakresie częstotliwości 
   akustycznych słyszalnych dla człowieka, czyli od 20Hz do 20kHz. 
   Można to zmienić, zmieniając w pliku defaults.m wartości:

-dolna granica: DOMAIN.low
-górna granica: DOMAIN.hi

   Powyższe wartości wpływają jedynie na granice wizualizacji działania filtrów
na wykresie.

4. Możliwość wpływania na dziedzinę częstotliwościową materiału audio
   zapisanego w formatach:
   - WAVE PCM,
   - FLAC,
   - OGG/VORBIS.

----------------------------------------------------------------------------

        II - Inicjalizacja:

Aby uruchomić program, należy uruchomić skrypt "clooeq.m"

----------------------------------------------------------------------------

        III - Obsługa:

1. Najpierw należy załadować plik, wciskając przycisk "Load an audio file",
2. Za pomocą suwaków i przełączników ustawić pożądane parametry filtrów,
3. Wcisnąć "Apply filters",
4. Aby odsłuchać materiał, należy wcisnąć przycisk "Play: current".
5. Jeśli nie jesteśmy zadowoleni z efektów, możemy wrócić do pkt 2,
   a następnie odsłuchać aktualną wersję przyciskiem "Play: current"
   lub poprzednią przyciskiem "Play: previous".
6. Po ustawieniu zadowalających parametrów można wyeksportować pliki
   wyjściowe. Aktualny - za pomocą "Export current" - lub poprzedni -
   - za pomocą "Export previous".

----------------------------------------------------------------------------