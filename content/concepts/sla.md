# SLA (Service Level Agreement)

Operational targets for response time and booking confirmation. Critical for customer experience and [[csat|CSAT]].

## Two Key SLAs

### Quote SLA: <24 Hours

**Definition:** Time from customer inquiry to price quote

**Target:** 95% of inquiries receive quote within 24 hours

**Applies to:**
- Standard requests (1 course, 2-4 players, clear dates)
- Simple packages (golf + transport, no complex requirements)

**Why it matters:**
- Customer shopping multiple platforms
- Fast quote = higher conversion (customer doesn't wait for competitor)
- Shows responsiveness = builds trust

**How measured:**
```
Time_to_quote = timestamp(quote_sent) - timestamp(inquiry_received)
```

**Month 3 target:** 95% under 24hr, average 8-12hr

### Confirmation SLA: <48 Hours

**Definition:** Time from customer payment to booking confirmation

**Target:** 90% of bookings confirmed within 48 hours

**Applies to:**
- [[manual_desk|Manual desk]] bookings (need to call course)
- [[aggregator_apis|API bookings]] confirm instantly (no SLA needed)

**Why it matters:**
- Customer paid, wants certainty
- Tee times can fill up (need to lock in quickly)
- Delays create anxiety = poor experience

**How measured:**
```
Time_to_confirm = timestamp(confirmation_sent) - timestamp(payment_received)
```

**Month 3 target:** 90% under 48hr, average 12-24hr

## SLA by Booking Type

### API Bookings (Golfsavers, GolfThai)

**Quote:** Instant (real-time availability check)

**Confirmation:** Instant (API books immediately after payment)

**No SLA needed:** Automated workflow, <30 seconds end-to-end

**Volume:** Target 65-70% of bookings via API by Month 6

### Manual Desk Bookings

**Quote:** <24hr (operator checks LINE/calls course)

**Confirmation:** <48hr (operator confirms after payment, course replies)

**Dependency:** Course response time (most courses reply within 3-12 hours during business hours)

**Volume:** 30-35% of bookings via manual desk by Month 6

**Bottleneck:** If course doesn't reply quickly, SLA at risk. Mitigation: pre-negotiated time windows with popular courses.

### Complex Packages (Corporate, Multi-Destination)

**Quote:** <72hr (requires custom pricing, multi-course coordination)

**Confirmation:** <5 days (multiple suppliers involved)

**Volume:** 10-15% of bookings

**Why longer:** Need to coordinate hotel, transport, multiple courses, group rates. Not standardized workflow.

## Operational Workflow for SLA Compliance

### Quote Generation (<24hr)

**Automated:**
1. Customer inquiry arrives (LINE bot / web)
2. AI classifies intent ("4 rounds in Pattaya, Dec 10-13")
3. System checks API availability for requested courses
4. If available: Generate quote instantly
5. If not available: Route to manual desk

**Manual desk:**
1. Operator receives inquiry (SMS alert)
2. Check course availability via LINE/phone
3. Generate quote in system
4. Send to customer via LINE

**Target:** Operator handles 10-15 quotes/day, average 15-20 min per quote

### Confirmation Flow (<48hr)

**API bookings:**
1. Customer pays via [[promptpay|PromptPay]]/card
2. Payment webhook triggers booking API call
3. API confirms instantly
4. System generates [[e_vouchers|e-voucher]]
5. Send to customer via LINE/email

**Time:** 30-60 seconds

**Manual desk bookings:**
1. Customer pays
2. System notifies manual desk operator
3. Operator calls/messages course to confirm booking
4. Course confirms (within 2-24hr typically)
5. Operator updates system
6. System generates e-voucher
7. Send to customer

**Time:** 2-48hr (depends on course response)

**Failure case:** If course doesn't reply within 36hr, operator escalates:
- Call instead of LINE
- Contact course manager directly (pre-established relationship)
- Offer alternative course at same price

## SLA Monitoring

**Dashboard metrics:**
- Inquiries received today: 45
- Quotes sent within 24hr: 42 (93%)
- Avg quote time: 11hr 23min
- Bookings confirmed within 48hr: 18/20 (90%)
- Avg confirmation time: 15hr 08min

**Alerts:**
- If any inquiry pending >18hr without quote → alert ops manager
- If any booking pending >36hr without confirmation → escalate to Tan

**Weekly review:**
- % meeting quote SLA (target: ≥95%)
- % meeting confirmation SLA (target: ≥90%)
- Identify bottleneck courses (slow to reply)
- Train manual desk operators on efficiency

## Why SLAs Matter (CSAT Link)

**Fast quote:**
- Customer feels heard ("they got back to me quickly")
- Higher conversion (doesn't shop around as much)
- [[csat|CSAT]] correlates with response time

**Fast confirmation:**
- Reduces anxiety ("did my booking go through?")
- Fewer support inquiries ("when will I get confirmation?")
- Professional impression ("they have their act together")

**Data from travel industry:**
- <12hr quote time: 4.7/5 CSAT avg
- 12-24hr quote time: 4.4/5 CSAT avg
- >24hr quote time: 3.9/5 CSAT avg

**SLA compliance drives CSAT, which drives retention and referrals.**

## Manual Desk Efficiency Tactics

### Pre-Negotiated Time Windows

**Problem:** Calling 50 different courses = coordination overhead

**Solution:** Negotiate preferred time windows with top 30 courses
- "We send you 10-20 bookings/month. Can you guarantee reply within 6 hours?"
- Most courses agree (they want the volume)
- Reduces confirmation time from 24-48hr → 6-12hr

### Templated LINE Messages

**Problem:** Typing custom message for each inquiry = slow

**Solution:** Macros for common scenarios
- "Hi, do you have availability for 2 players on [date] at [time]? Customer name: [name]. Please confirm rate."
- Send with 2 clicks instead of typing
- Saves 5-10 min per inquiry

### AI-Assisted Classification

**Problem:** Manual desk wastes time on inquiries that could be API-automated

**Solution:** AI routes inquiry correctly
- If course has API availability: Don't route to manual desk
- If course needs manual check: Route immediately (don't wait)
- Reduces manual desk load by 30-40%

## Competitive Context

**Golfasian:** Email-based, 24-48hr quote time (sometimes 72hr)

**Golfsavers:** Instant for API courses, but no manual desk for non-API courses

**Club Thailand Card:** Phone-based, 48-72hr quote time (business hours only)

**GolfOkay advantage:** <24hr quote SLA for 100% of inquiries (API + manual), not just API-enabled courses.

## SLA Trade-offs

**Tighter SLA (e.g., <12hr) = higher operational cost:**
- Need 24/7 manual desk coverage (night shift in Thailand to serve international customers)
- Higher stress on operators
- May sacrifice quality for speed

**Current SLA (<24hr quote, <48hr confirm) is optimal:**
- Achievable with single-shift operations (9am-6pm Thai time)
- Competitive vs incumbents (faster than Golfasian, more comprehensive than Golfsavers)
- Doesn't require 24/7 staffing (expensive)

**If SLA consistently missed:**
- Hire 2nd manual desk operator
- Extend manual desk hours (6am-9pm)
- Or accept that complex packages take >24hr (set expectations)

## Month 3 Performance Milestones

**Quote SLA:**
- 95% of inquiries quoted within 24hr
- Avg quote time: 10-14hr
- 0 inquiries >36hr without quote

**Confirmation SLA:**
- 90% of bookings confirmed within 48hr
- Avg confirmation time: 12-20hr
- 0 bookings >72hr without confirmation

**If these hit:** Operational process is working. Can scale volume.

**If these miss:** Bottleneck identified (need more manual desk capacity or better course relationships).

## See Also

- [[csat]] - How SLA compliance impacts customer satisfaction
- [[manual_desk]] - Workflow details for manual booking confirmations
- [[hybrid_integration]] - SLA applies differently to API vs manual bookings
- [[e_vouchers]] - Confirmation = e-voucher delivery
