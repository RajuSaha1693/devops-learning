Q1. What is DevOps
Answer: Most people misunderstood by the term DevOps
They think it as a
Tool
Just CI/CD
Developers + Operations Works
Only Automation.

        But actually its more then that DevOps is a combinations of
        1.Culture
        2.Processes
        3.Tools
        To make the software delivery faster, safer, automated and scalable

Q2. Why most of Companies uses DevOps
Answer: Before pointing out why they uses lets check the senario before DevOps 1. Developers work on project and the write the code and then it send to the Operations teams (Deployment Teams) 2. Operations teams deployed the software manually, looking on the stacks and dependecy required which make the process slower 3. Result : Bugs, Build failure, inconsistent servers 4. And it was all manual, So no automations 5. Result of this release happen very rarely like in a month/quarter

        After the introduction of DevOps all the processes becames streamline like
        1. Automation everywhere
        2. CI/CD does the build -> Test -> Deploy automatically
        3. Infrastructure as Code (IaC) -> Teraform
        4. Monitoring detects failures automatically
        5. Deployments happen dozens of times per day
        6. Cloud makes the infra scalable

        ---> Save Money + Ship Faster + fewer bugs

Q3. DevOps LifeCycle
Answer: 1. Plan --> Jira, Azure DevOps 2. Code --> Github, Gitlab 3. Build --> NPM, maven 4. Test --> JUnit, Jest, Selenium 5. CI --> Github Actions / Gitlab CI / Jenkins 6. Deploy --> Kubernetes, AWS, Docker 7. Operate --> Servers, Load balancers 8. Monitor --> Grafana, Prometheus, ELK

Q4. CI vs CD vs Deployment
Answer: CI : Continous Integration
Every push (Github/GitLab etc) does the below things automatically 1. Install dependencies 2. Runs testing 3. Builds the application 4. Checks the code quality

        CD : Continous Deployment
        Prepare the application to deploy
        1. Builds the Docker image
        2. Pushes the image registry
        3. Wait for approval(If implemented)

        Deployment
        Every commits automatically deploys the the production

Q5. Common DevOps tools
Answer: Infrastructure --> Linux , Networking, SSH
Version Control --> Git, Github
CI/CD --> GitHub Actions, Gitlab CI, Jenkins
Containerization --> Docker
Orchestration --> Kubernetes
Cloud --> AWS, Google Cloud etc
IaC --> Teraform
Monitoring --> Prometheus, Grafana, Loki/ELK
