# Descrizione dei casi d'uso

- **Name:** Affitto jet in condivisione (cliente)
- **Identifier:** UC1
- **Basic Course Of Action:**
  - L'utente accede al sistema
  - Il sistema controlla l'effettiva registrazione dell'utente. In caso contrario, all'utente è chiesto di registrarsi
  - L'utente seleziona l'area prenotazioni
  - Il sistema mostra all'utente le tre modalità di prenotazione: esclusiva, condivisa, trasporto merci
  - L'utente sceglie la modalità condivisa
  - Il sistema mostra i voli disponibili; se non ce ne sono, viene proposto di crearne uno; l'utente ha anche la possibilità di scegliere flessibilità d'orario e di scalo in cambio di uno sconto
  - L'utente seleziona le opzioni, inserisce i dati necessari e conferma
  - Se la prenotazione va a buon fine, il sistema connette l'utente al sistema di pagamento
  - L'utente paga
  - Il sistema invia una conferma all'utente. Se il viaggio è flessibile, il sistema invia il piano di volo definitivo a 48 ore dalla data di partenza; se non è flessibile il piano di volo viene generato istantaneamente

- **Name:** Affitto jet esclusivo (cliente)
- **Identifier:** UC2
- **Basic Course Of Action:**
  - L'utente accede al sistema
  - Il sistema controlla l'effettiva registrazione dell'utente. In caso contrario, all'utente è chiesto di registrarsi
  - L'utente seleziona l'area prenotazioni
  - Il sistema mostra all'utente le tre modalità di prenotazione: esclusiva, condivisa, trasporto merci
  - L'utente sceglie la modalità esclusiva
  - L'utente seleziona le opzioni, inserisce i dati necessari e conferma
  - Se la prenotazione va a buon fine, il sistema connette l'utente al sistema di pagamento
  - L'utente paga
  - Il sistema invia una conferma all'utente, compreso il piano di volo che viene generato istantaneamente

- **Name:** Affitto posto merci in stiva (cliente)
- **Identifier:** UC3
- **Basic Course Of Action:**
  - L'utente accede al sistema
  - Il sistema controlla l'effettiva registrazione dell'utente. In caso contrario, all'utente è chiesto di registrarsi
  - L'utente seleziona l'area prenotazioni
  - Il sistema mostra all'utente le tre modalità di prenotazione: esclusiva, condivisa, trasporto merci
  - L'utente sceglie la modalità trasporto merci
  - L'utente seleziona le opzioni, inserisce i dati necessari e conferma
  - Se possibile, il sistema cerca di caricare le merci su voli già esistenti, altrimenti viene creato un nuovo volo; l'utente ha anche la possibilità di scegliere flessibilità di data e di scalo in cambio di uno sconto
  - Se la prenotazione va a buon fine, il sistema connette l'utente al sistema di pagamento
  - L'utente paga
  - Il sistema invia una conferma all'utente, compreso il piano di volo entro 48 ore dalla partenza

- **Name:** Inserimento Jet (proprietario)
- **Identifier:** UC4
- **Basic Course Of Action:**
  - Il proprietario accede al sistema
  - Il sistema controlla l'effettiva registrazione del proprietario. In caso contrario, al proprietario è chiesto di registrarsi
  - Il proprietario seleziona l'area gestione jet
  - Il sistema mostra le opzioni disponibili: inserimento, modifica, cancellazione
  - Il proprietario seleziona inserimento e inserisce i dati necessari (modello, codice, capacità, nome del pilota, ...) e conferma
  - Il sistema risponde con la conferma di inserimento

- **Name:** Eliminazione Jet (proprietario)
- **Identifier:** UC5
- **Basic Course Of Action:**
  - Il proprietario accede al sistema
  - Il sistema controlla l'effettiva registrazione del proprietario. In caso contrario, al proprietario è chiesto di registrarsi
  - Il proprietario seleziona l'area gestione jet
  - Il sistema mostra le opzioni disponibili: inserimento, modifica, cancellazione
  - Il proprietario seleziona eliminazione, sceglie il jet da eliminare e conferma
  - Il sistema risponde con la conferma di cancellazione

- **Name:** Gestione prenotazioni (proprietario)
- **Identifier:** UC6
- **Basic Course Of Action:**
  - Il proprietario accede al sistema
  - Il sistema controlla l'effettiva registrazione del proprietario. In caso contrario, al proprietario è chiesto di registrarsi
  - Il proprietario seleziona l'area gestione delle prenotazioni
  - Il sistema mostra le prenotazioni effettuate dai clienti sui jet del proprietario
  - Il proprietario può confermare o negare le richieste di prenotazione dei clienti, nonché rendere non disponibile il jet per alcuni periodi
  - Il sistema risponde con la conferma della scelta del proprietario

- **Name:** Consultazione stato jet (proprietario)
- **Identifier:** UC7
- **Basic Course Of Action:**
  - Il proprietario accede al sistema
  - Il sistema controlla l'effettiva registrazione del proprietario. In caso contrario, al proprietario è chiesto di registrarsi
  - Il proprietario seleziona l'area di visualizzazione dello stato dei jet
  - Il sistema mostra lo stato attuale (posizione, prenotazione corrente, guadagni totali, altre statistiche, ...) per ognuno dei jet

- **Name:** Consultazione dashboard (amministratore)
- **Identifier:** UC8
- **Basic Course Of Action:**
  - L'amministratore accede al sistema
  - Il sistema controlla l'effettiva registrazione dell'amministratore e i suoi privilegi. In caso contrario, il login viene respinto
  - L'amministratore seleziona la funzione desiderata (dashboard generale, gestione degli account, ...)
  - Il sistema mostra la sezione desiderata all'amministratore e risponde ad ogni sua decisione

- **Name:** Registrazione (proprietari e clienti)
- **Identifier:** UC9
- **Basic Course Of Action:**
  - l'utente accede alla pagina di registrazione del sistema
  - il sistema mostra le opzioni disponibili (registarsi come cliente o come proprietario)
  - l'utente sceglie il proprio ruolo e inserisce i propri dati
  - il sistema valida i dati; se sono corretti invia una mail di conferma
  - l'utente risponde cliccando il link ricevuto via mail
  - il sistema conferma la registrazione; da quel momento l'utente può accedere liberamente con le proprie credenziali
