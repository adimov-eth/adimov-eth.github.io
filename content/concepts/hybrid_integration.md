# Hybrid Integration

GolfOkay's core technical strategy: Accept that 50-55% of Thai golf courses will never have APIs. Build for that reality.

## The Reality

**Course digital readiness:**
- 15-20%: Modern systems with APIs (Golfmanager, Lightspeed, etc.)
- 25-30%: Basic websites, no real-time booking
- 50-55%: Manual only (phone, LINE, email)

**Not a failure.** This is the market. Waiting for full automation = waiting forever.

## Three Integration Tiers

### Tier 1: Aggregator APIs (Immediate)

**Sources:** [[aggregator_apis|Golfsavers, GolfThai]]

**Coverage:** 200-500 courses

**Speed:** Real-time availability, instant confirmation

**Development time:** 2-4 weeks

**Use case:** Tourist favorites, popular courses, championship venues

**Pros:**
- Live from day 1
- Instant booking confirmation
- Standardized workflow

**Cons:**
- Aggregator commission (3-5%)
- Can't negotiate custom rates
- Still miss 50% of market

### Tier 2: Direct Course APIs (Selective)

**Sources:** Courses using Golfmanager, Lightspeed, Jonas Club Software

**Coverage:** 40-60 courses (15-20% of market)

**Speed:** Real-time for API courses

**Development time:** 3-5 days per course system

**Use case:** High-volume courses where direct relationship justifies integration effort

**Pros:**
- No aggregator fees
- Better rates possible
- Direct relationship with course

**Cons:**
- Each course system different
- Maintenance overhead
- Limited to tech-capable courses

### Tier 3: Manual Desk (Essential)

**Sources:** All non-API courses (50-55% of market)

**Coverage:** 150-170 courses

**Speed:** <48hr confirmation ([[sla|SLA target]])

**Operations:** Human staff calling/LINE messaging courses

**Use case:** Local gems, expat favorites, budget courses not on aggregators

**Pros:**
- Access to courses competitors can't reach
- Flexibility for custom packages
- Personal relationships with course staff

**Cons:**
- Labor cost (~฿200-300 per booking)
- Slower than API (24-48hr vs instant)
- Scales with headcount, not just code

See [[manual_desk]] for detailed workflow.

## Platform Architecture

```
Customer inquiry (LINE bot / web)
   ↓
Intent classification (AI)
   ↓
Course availability check:
   ├─> Tier 1: Check Golfsavers API
   ├─> Tier 1: Check GolfThai API
   ├─> Tier 2: Check direct course API (if integrated)
   └─> Tier 3: Route to manual desk
   ↓
Quote generation (<24hr per [[sla|SLA]])
   ↓
Customer accepts
   ↓
Payment via [[promptpay|PromptPay]] / card
   ↓
Booking confirmation
   ↓
[[e_vouchers|E-voucher]] generation
```

**Unified customer experience:** Whether booked via API or manual desk, customer gets same e-voucher format and service level.

## Automation Targets

**Month 3:**
- 50-60% of inquiries fully automated (FAQ, quote generation)
- 30-40% require manual desk involvement
- <24hr quote SLA maintained

**Month 6:**
- 65-70% of bookings via Tier 1/2 (API-enabled)
- 30-35% via manual desk
- [[csat|CSAT]] ≥4.6/5 across all tiers

**Month 12:**
- 70-75% API-enabled (add direct integrations for high-volume courses)
- 25-30% manual desk (steady state)
- Manual desk efficiency: 15-20 bookings/day per operator

## Why Hybrid Works

**Market reality:** Can't API-integrate every course. They don't have systems.

**Customer expectation:** Doesn't matter how booking happens. They want their tee time confirmed.

**Competitive advantage:** Competitors either go full-API (miss 50% of courses) or full-manual (can't scale).

**GolfOkay does both:** API where possible, manual where necessary.

## Manual Desk as Asset, Not Liability

**Traditional view:** Manual processes = failure to automate

**Reality:** Manual desk enables access to inventory competitors can't reach

**Examples:**
- Hidden gem course in Hua Hin (no website, LINE bookings only)
- Exclusive member course (referral only, phone bookings)
- Local favorite with expat community (cheap, manual-only)

**These courses matter.** Expats know them. Reviews are excellent. But they'll never have APIs.

## Operational Efficiency

**Manual desk cost:** ฿200-300 per booking (15-20 min × ฿50/hr loaded cost)

**Tier 1/2 cost:** Negligible (API call + payment processing)

**Break-even:** If manual desk books 100-150 packages/month, operational cost is ฿20-45K/month

**Revenue from those bookings:** 100 packages × ฿25K margin = ฿2.5M revenue

**Manual desk cost as % of revenue:** 0.8-1.8% (acceptable overhead for 30% of market access)

## Scaling Manual Desk

**Month 0-3:** Tan handles manual desk solo (20-30 bookings/month capacity)

**Month 4-6:** Hire ops manager (฿30K/month) – capacity doubles to 50-60 bookings/month

**Month 7-9:** Add 2nd operator if volume exceeds 80 bookings/month

**Month 10-12:** 3-person manual desk = 150-180 bookings/month capacity

**Efficiency improvements:**
- Pre-negotiated time windows with courses (reduces coordination)
- Templated LINE messages (faster communication)
- AI-assisted intent classification (routes inquiries correctly)
- Macros for common scenarios (quote generation)

## White-Label Course Tools (Future)

**Phase 2 strategy** (Month 10+):
- Offer free booking engine to manual-only courses
- "We'll build you a booking system, you give us direct access"
- Converts Tier 3 courses to Tier 2 over time
- Trade technology for inventory access

**Value prop for courses:**
- Free modern booking UI
- Mobile-friendly
- Integrated payment processing
- Real-time availability management

**Value for GolfOkay:**
- Direct API access (no aggregator fees)
- Exclusive rates possible
- Reduces manual desk load

## Technology Stack

**API layer:**
- Node.js/TypeScript backend
- REST API wrapper for Golfsavers, GolfThai
- GraphQL for direct course integrations (flexible schema per course)

**Manual desk tools:**
- CRM for tracking inquiries (status: pending/quoted/confirmed/completed)
- LINE integration for customer communication
- SMS alerts for operators when inquiry routed
- Dashboard showing manual desk queue

**AI automation:**
- Intent classification (golf inquiry vs general question)
- Course recommendation engine (budget, location, skill level)
- Quote generation (pull rates, calculate package price)
- Follow-up automation (remind customer of pending quote)

## Competitive Context

**Golfasian:** 100% manual (email/phone). Slow but comprehensive coverage.

**Golfsavers:** 100% API (aggregator model). Fast but limited to API-enabled courses.

**GolfOkay:** Hybrid. Fast for 70% of courses, comprehensive for 100% of courses.

**Customer doesn't care** whether booking was automated or manual. They care that it works.

## See Also

- [[manual_desk]] - Detailed manual operations workflow
- [[aggregator_apis]] - Tier 1 integration strategy
- [[e_vouchers]] - Unified confirmation across API + manual bookings
- [[sla]] - Service level targets for both API and manual workflows
- [[distribution_reality]] - Why 60-70% of market is agent-mediated
