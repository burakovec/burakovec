/src
│
├── /Core                   # Domain katmanı (Entities, ValueObjects, Interfaces)
│   ├── Entities            # Domain modelleri (iş mantığı sınıfları)
│   │   └── User.cs         # Örnek Entity (domain varlıkları)
│   ├── Interfaces          # Arayüzler (repository, service arayüzleri)
│   │   └── IUserRepository.cs
│   ├── ValueObjects        # Value Object'ler (immutable küçük veri yapıları)
│   └── DomainServices      # Domain odaklı iş mantığı servisleri
│       └── UserService.cs
│
├── /Application             # Application katmanı (use cases, service'ler)
│   ├── DTOs                # Veri transfer nesneleri (DTOs)
│   │   └── UserDTO.cs
│   ├── Interfaces          # Uygulama arayüzleri (service ve use case arayüzleri)
│   │   └── IUserService.cs
│   ├── Services            # Uygulama servisleri (iş mantığı işlenen katman)
│   │   └── UserService.cs
│   └── UseCases            # Use Case'ler (herhangi bir belirli iş akışı)
│       └── CreateUser.cs   # Örnek bir Use Case
│
├── /Infrastructure          # Infrastructure katmanı (veritabanı, dış servisler)
│   ├── Data                # Veritabanı bağlamı ve repository'ler
│   │   └── AppDbContext.cs # DbContext ve EF Core (veya başka ORM)
│   │   └── UserRepository.cs
│   ├── ExternalServices    # Üçüncü parti servis bağlantıları
│   │   └── EmailService.cs
│   └── Configuration       # Uygulama ayarları ve konfigürasyon dosyaları
│       └── DbConfig.cs
│
├── /WebAPI                  # Presentation/UI katmanı (API, MVC, CLI)
│   ├── Controllers         # API controller'lar
│   │   └── UserController.cs
│   ├── ViewModels          # ViewModel'ler (HTTP response ve request modelleri)
│   │   └── CreateUserViewModel.cs
│   ├── Middleware          # Middleware katmanı
│   └── Filters             # Action filtreleri (örneğin, Authorization)
│
└── /Tests                   # Test projeleri
    ├── UnitTests           # Unit testler
    │   └── UserServiceTests.cs
    └── IntegrationTests    # Entegrasyon testleri
        └── UserControllerTests.cs
