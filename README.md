# ራዕይ (Ra'ey) — Ethiopia-scale Medicine Delivery Super App

This repository now includes a **production-oriented starter architecture** for your vision:

- Flutter front-end with glowing UI direction and dark/light mode.
- Trilingual foundation: **English, Amharic, Afaan Oromoo**.
- Intro auth flow with hooks for **Google/Facebook sign in/sign up**.
- Core bottom navigation:
  - Explore
  - Contact Doctors
  - AI Assistance
  - You
- Explore-to-payment flow with **Telebirr integration point**.
- Nearby providers section designed for **Google Maps integration**.
- Developer attribution section for **Mikiyas Teshome**.

## Project Structure

```text
lib/
  core/
    l10n/      # language switching and strings
    theme/     # dark/light control + theme tokens
  features/
    auth/      # intro + social auth entry
    pages/     # main shell + bottom nav
    explore/   # medicine catalog experience
    payment/   # telebirr checkout section
    contact_doctors/
    ai_assistant/
    profile/
```

## What is implemented right now

1. **Interactive app shell** with modern Material 3 styling and dark default theme.
2. **Language changer** in app bar (EN / አማርኛ / Afaan Oromoo).
3. **Theme toggle** for day/night.
4. **Medicine cards** opening payment/provider details.
5. **Provider communication channels** (email, phone, GitHub, Telegram, YouTube).
6. **Nearby providers entry card** ready for maps + location permissions.

## Required integrations you should connect next

- Firebase setup for Google/Facebook authentication.
- Telebirr merchant onboarding + API callback confirmation.
- Backend services (recommended stack below).
- Full catalog/inventory, order lifecycle, and notifications.

## Recommended backend (secure + scalable)

For 100M-scale ambition, start with:

- **PostgreSQL** (primary transactional DB)
- **Redis** (cache, sessions, queues)
- **Object storage** for medicine images/docs
- **API Gateway + Auth service + Catalog service + Payment service + Delivery service**
- **Audit logging**, encryption at rest, TLS in transit, and role-based access control.

## Flutter setup

```bash
flutter pub get
flutter run
```

## Important note

The current code is a **solid high-level starter**, not yet fully wired to production APIs.
It is structured so you can progressively integrate each external service without rewriting the app shell.

## Tab Output Mockups

Generated visual output mockups for each main tab are available in `mockups/`:

- `mockups/raey_explore.svg`
- `mockups/raey_contact_doctors.svg`
- `mockups/raey_ai_assistance.svg`
- `mockups/raey_you.svg`
