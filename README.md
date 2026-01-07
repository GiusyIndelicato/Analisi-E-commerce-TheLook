# Analisi E-commerce TheLook: Clienti e Prodotti (2025)
# Introduzione

Questo progetto nasce con l’obiettivo di analizzare i dati di un e-commerce per comprendere il comportamento dei clienti, la distribuzione geografica delle vendite e le performance economiche di prodotti, brand e categorie.

Il dataset utilizzato è The Look ecommerce, disponibile pubblicamente su Google BigQuery, che simula i dati di una piattaforma di vendita online nel settore fashion.
L’analisi è focalizzata sull’anno 2025 ed è stata sviluppata seguendo un approccio end-to-end: estrazione dati, pulizia, modellazione e visualizzazione.

Il progetto è strutturato in due dashboard principali:

1. Dashboard Clienti

2. Dashboard Prodotti
## [ Esplora il Progetto](https://public.tableau.com/app/profile/giusy.indelicato/viz/E-CommerceInsightsDashboardCustomerChannelSalesPerformance/Dashprodotti)
Questo progetto è accompagnato da dashboard interattive pubblicate su Tableau Public:
**[E-Commerce Insights Dashboard](https://public.tableau.com/app/profile/giusy.indelicato/viz/E-CommerceInsightsDashboardCustomerChannelSalesPerformance/Dashprodotti)**

# Dataset e Preparazione dei Dati

I dati sono stati estratti da BigQuery tramite una query SQL che integra informazioni provenienti da più tabelle:
- utenti
- ordini
- articoli ordinati
- prodotti

L’estrazione è stata effettuata a livello di dettaglio, mantenendo ogni riga come singolo articolo venduto, per garantire massima flessibilità nelle analisi successive.

Sono stati inclusi:
- dati demografici e geografici dei clienti
- informazioni sui prodotti (brand, categoria, reparto)
- prezzo di vendita e costo del prodotto (arrotondati a due decimali)

Sono stati esclusi:
- ordini cancellati o resi
- anni diversi dal 2025

Dopo l’estrazione, il dataset è stato:
1. verificato per individuare valori nulli o anomali
2. controllato tramite boxplot in Tableau
3. adattato nei formati numerici per una corretta interpretazione in Tableau
4. convertito in file Excel per l’importazione finale

# Dashboard Clienti – Analisi del Comportamento

La Dashboard Clienti ha l’obiettivo di rispondere a tre domande principali:

**1. Chi sono i clienti?**

Attraverso l’analisi per fascia d’età e provenienza geografica è possibile delineare il profilo della clientela e individuare i mercati più rilevanti.
Nella mappa geografica, l’intensità del colore rappresenta il numero di clienti, permettendo di individuare rapidamente le aree con maggiore concentrazione.

**2. Da dove arrivano?**

Il grafico ad albero dei canali di acquisizione del traffico permette di comprendere quali fonti contribuiscono maggiormente all’ingresso dei clienti sulla piattaforma.

**3. Come evolve il business nel tempo?**

Il trend mensile degli ordini, rappresentato con un grafico ad area, evidenzia l’andamento nel corso dell’anno.
Sono stati inoltre inseriti indicatori di variazione mese su mese per mostrare l’incremento o la diminuzione del numero di clienti.

**Tra i KPI principali:**
- totale clienti
- totale articoli venduti
- AOV (spesa media per ordine), calcolata tramite mediana per ridurre l’impatto di valori estremi, utilizzando una LOD expression a livello di ordine.

# Dashboard Prodotti – Performance Economica

La Dashboard Prodotti ha l’obiettivo di analizzare le performance economiche dell’e-commerce, andando oltre il semplice volume di vendite per comprendere redditività, marginalità e valore generato da prodotti, brand e categorie.

L’analisi risponde alle seguenti domande chiave:

**1. Qual è il valore economico generato dal business?**

Attraverso i KPI principali è possibile valutare la salute economica complessiva dell’e-commerce e avere una visione sintetica della redditività.

**2. In quali Paesi le vendite sono più profittevoli?**

La mappa di rendimento delle vendite per Paese, colorata in base al profitto, permette di distinguere:
- mercati ad alto volume ma bassa redditività
- mercati con minore volume ma margini più elevati

**3. Quali linee di prodotto performano meglio?**

L’analisi per reparto (uomo/donna) confronta: percentuale di ordini e di clienti, marginalità e AOV.

Questo consente di comprendere se le diverse linee di prodotto contribuiscono in modo equilibrato al business o se esistono differenze significative in termini di valore generato.

**4. Quali brand trainano il volume di vendite?**

Il grafico dei Top 30 Brand identifica i brand più acquistati in termini di volume, con un confronto separato per reparto uomo e donna.

**5. Quali categorie sono più vendute e quali più redditizie?**

Il confronto tra: categorie più vendute vs profitto permette di individuare categorie:
- ad alto volume ma basso margine
- a volume più contenuto ma elevata redditività.

L’uso di colori divergenti consente di evidenziare categorie che, pur non essendo le più vendute, risultano particolarmente profittevoli, mettendo in luce insight strategici per l’ottimizzazione dell’assortimento.

# Analisi e Conclusioni
L’analisi dei dati dell’e-commerce per l’anno 2025 evidenzia un business solido e profittevole, con margini elevati e un buon livello di crescita nel corso dell’anno.

# Performance complessiva
Con: 56,4K clienti, 106,8K articoli venduti, AOV pari a 56, Fatturato totale di 6,27M, Profitto di 3,25M e Margine del 51,87% il modello di business mostra una buona efficienza operativa, con costi ben controllati rispetto ai ricavi.

# Analisi geografica
La Cina si conferma il mercato più rilevante, unendo alti volumi di ordini, AOV in linea con la media ed elevata redditività.
Al contrario, Colombia e Austria mostrano un numero limitato di ordini e un AOV più basso, evidenziando un potenziale economico ridotto.

# Canali di acquisizione
Quasi il 70% del traffico proviene dalla ricerca, mentre email e display ads contribuiscono solo rispettivamente del 5% e del 4%.

# Segmentazione per età
Le fasce 25–34 e 55–64 risultano le più attive in termini di ordini, suggerendo la presenza di due cluster distinti:
1. giovani adulti digitalmente attivi
2. clienti più maturi con maggiore capacità di spesa

# Trend temporali
Dopo un calo iniziale a Febbraio (-8,63% rispetto a Gennaio), la crescita dei clienti è costante e positiva, culminando nel picco di Dicembre (+39,42%).

È necessaria un'analisi approfondita per determinare se tale picco sia organico o influenzato da fattori esterni

# Brand e categorie
L’analisi per Brand e categoria evidenzia una chiara distinzione tra volume di vendita e redditività.

L’Intimo donna è la categoria più venduta, ma genera un profitto inferiore, al contrario dei Jeans e dei Cappotti, che pur con volumi minori, risultano più profittevoli grazie a prezzi più elevati, generando un maggiore valore per ordine.
