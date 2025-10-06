# Aggregator APIs

Third-party platforms that connect to multiple golf courses and expose a unified API for booking.

## Key Platforms

**Golfsavers:**
- 500+ courses across Asia
- Proven API with real-time availability
- Established player in Thailand market

**GolfThai:**
- 300+ Thai courses
- 22 years of local experience
- Strong relationships with course operators

## Why Use Aggregators

**Instant inventory:** Access 200-500 courses from day 1 without individual negotiations

**No individual integrations:** One API call instead of building 300+ separate course integrations

**Real-time availability:** See open tee times immediately, no manual checking

**Standardized format:** Consistent booking flow across all courses, regardless of their internal systems

## Tradeoffs

**Cost:** Pay commission to aggregator on top of course commission (typical: 3-5% to aggregator)

**Less control:** Can't negotiate custom pricing or terms directly with courses

**Coverage gaps:** Still miss 50-55% of market (courses not on any aggregator platform)

**Rate parity:** May not have access to best rates (courses often reserve lowest prices for direct bookings)

## GolfOkay Strategy

**Phase 1 (Month 0-3):** Use aggregators for immediate launch. Connect Golfsavers + GolfThai APIs. Get 300-400 courses live on day 1.

**Phase 2 (Month 4-9):** Build direct relationships with high-volume courses. Negotiate better rates by bypassing aggregator layer.

**Phase 3 (Month 10+):** Offer white-label booking tools to [[manual_desk|manual-only courses]]. Exchange technology for direct inventory access.

## Integration Architecture

```
Customer inquiry
   ↓
Platform checks: Aggregator API first
   ↓
   If available: Real-time booking via API
   If not: Route to [[manual_desk]]
   ↓
Confirmation + [[e_vouchers|e-voucher]] generation
```

**Workflow:**
1. Customer requests course X on date Y
2. Platform queries Golfsavers API: "Available?"
3. If yes: Show price, instant booking, generate e-voucher
4. If no: Check GolfThai API
5. If both fail: Manual desk calls course directly

**Fallback ratio:** Target 65-70% API-automated, 30-35% manual desk by Month 6

## Economics

**Aggregator commission example:**
- Course green fee: ฿2,000
- Platform commission from aggregator: 12% = ฿240
- Aggregator takes 3-5%: ฿60-100
- Net to platform: ฿140-180

**Direct relationship comparison:**
- Same green fee: ฿2,000
- Direct platform commission: 15% = ฿300
- No aggregator cut
- Net to platform: ฿300

**Break-even:** If a course generates >10 bookings/month via platform, worth building direct relationship (saves ~฿1,200-1,600/month vs aggregator fees)

## API Integration Complexity

**Easy:** Golfsavers, GolfThai (RESTful APIs, documented, stable)

**Medium:** Direct course systems (Golfmanager, Lightspeed) – each has different API specs

**Hard:** Legacy course systems (no API, need manual desk)

**Development time:**
- Golfsavers integration: 1-2 weeks
- GolfThai integration: 1-2 weeks
- Custom course API: 3-5 days each
- Manual desk workflow: Ongoing operations cost

## See Also

- [[hybrid_integration]] - Overall strategy combining APIs + manual desk
- [[manual_desk]] - Fallback for courses without API access
- [[e_vouchers]] - How booking confirmations work across API + manual bookings
- [[unit_economics]] - Commission structure and margin calculations
