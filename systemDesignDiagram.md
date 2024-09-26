graph TD
    U[User] -->|Inputs resume & preferences| UI[Web UI]
    UI -->|Sends commands| API[API Gateway]
    API --> JobSearch[Job Search Service]
    API --> ResumeTailor[Resume Tailoring Service]
    API --> NetworkAnalysis[Network Analysis Service]
    API --> ApplicationTracker[Application Tracking Service]
    
    JobSearch -->|Fetches job listings| JobSites[(Job Sites APIs)]
    JobSearch -->|Stores job data| JobDB[(Job Database)]
    
    ResumeTailor -->|Retrieves job details| JobDB
    ResumeTailor -->|Accesses user data| UserDB[(User Database)]
    
    NetworkAnalysis -->|Analyzes connections| LinkedIn[LinkedIn API]
    
    ApplicationTracker -->|Stores application data| AppDB[(Application Database)]
    
    AI[AI Service] --> ResumeTailor
    AI --> NetworkAnalysis
    
    Scheduler[Scheduling Service] -->|Triggers periodic searches| JobSearch
    Scheduler -->|Triggers applications| ApplicationSubmitter[Application Submitter]
    
    ApplicationSubmitter -->|Submits applications| JobSites
    ApplicationSubmitter -->|Updates tracking| ApplicationTracker