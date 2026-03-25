# Ra'ey Scalable Architecture Blueprint

## Core Services
- Identity Service (Google/Facebook OAuth + device/session management)
- User Service (profile, language, theme, preferences)
- Medicine Catalog Service (drugs, pharmacy providers, stock)
- Payment Service (Telebirr integration)
- Provider Service (location + contact channels)
- Doctor Consultation Service (chat/video scheduling)
- AI Assistant Service (medical-safe FAQ and support)

## Data Model (PostgreSQL)
- users(id, full_name, phone, email, language, created_at)
- auth_accounts(id, user_id, provider, provider_uid)
- providers(id, name, latitude, longitude, phone, email, telegram, youtube, github)
- medicines(id, provider_id, name, local_name, description, photo_url, price_etb)
- orders(id, user_id, provider_id, status, total_etb, created_at)
- order_items(id, order_id, medicine_id, quantity, unit_price_etb)
- payments(id, order_id, method, telebirr_txn_id, status, paid_at)

## Security Controls
- JWT + refresh token rotation
- row-level constraints by tenant/role
- at-rest encryption for sensitive tables
- immutable audit events for payment and prescription actions
- WAF + API rate limiting + abuse detection

## Mapping + Nearby
- Use provider latitude/longitude and geospatial indexing.
- Client sends current location; backend returns nearest approved providers.
- Google Maps UI renders boxed provider previews and route actions.
