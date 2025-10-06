# Manual Desk Operations

**Reality:** 50-55% of Thai golf courses don't have modern booking APIs. They only accept reservations via phone or LINE chat.

**NOT a failure.** This is accepting [[distribution_reality|market reality]].

---

## What Manual Desk Does

**Human staff handling golf course bookings when API integration isn't available.**

### Workflow

1. Customer inquiry comes in (via LINE bot or platform)
2. System identifies course has no API
3. Routes request to manual desk operator
4. Operator calls/messages course directly
5. Confirms tee time manually
6. Updates system, generates [[e_vouchers|e-voucher]]

---

## Efficiency Targets

**SLAs:**
- <24hr quote [[sla|SLA]] for standard requests
- <48hr confirmation for legacy courses
- Handle 60% of confirmations with 1 FTE (ops manager)

**Optimization tactics:**
- Pre-negotiated time windows reduce coordination overhead
- Templated messaging and macros for efficiency
- Batch bookings to same course (call once, confirm multiple)

---

## Staffing & Cost

**Initial team:**
- Operations manager: ฿30K/month (starts month 1)
- Handles manual desk + operations board + supplier coordination

**Scaling:**
- 1 FTE can handle ~40-50 manual bookings/month (30-45 min per booking)
- At 75 packages/month with 50% manual = ~38 manual bookings
- Single ops manager sufficient until ~100 packages/month

**Cost per manual booking:**
- ฿30K/month ÷ 40 bookings = ฿750/booking (~$22)
- Ops manager also handles other tasks (driver assignment, issue tracking)
- Marginal cost ~฿200-300 per booking (15-20 min @ ฿50/hr loaded)

---

## Why Manual Desk is Necessary

**Distribution reality:**
- Only 15-20% courses have modern APIs
- 50-55% fully manual (phone/LINE only)
- Even with [[aggregator_apis|aggregators]], miss 50% of market

**Alternative (rejected):**
- Only work with API-ready courses → Lose 50% of inventory
- Force courses to integrate → Takes years, most won't
- Partner with agents who handle manual → Give up margin, train competitors

**Acceptance:**
- Build automation for 50% that's automatable
- Staff manual desk for 50% that isn't
- Both coexist: [[hybrid_integration|hybrid approach]]

---

## Automation Support for Manual Desk

Even manual bookings benefit from automation:

**Intake:** LINE/WhatsApp webhooks capture inquiry automatically
**Routing:** System identifies which courses need manual handling
**Templates:** Pre-filled messages for common requests (reduces typing)
**Tracking:** CRM shows which bookings pending confirmation
**Reminders:** Alert operator if <48hr SLA at risk
**E-voucher:** Auto-generated once operator confirms in system

**Result:** Manual workflow is faster/smoother, even if core confirmation is human.

---

## Manual Desk vs Automation Comparison

### Fully Automated (15-20% of courses)
- [[aggregator_apis|Aggregator API]] or direct course API
- Real-time availability check
- Instant confirmation
- E-voucher generated immediately
- **Operator time:** 0 minutes

### Manual with Automation Support (50-55% of courses)
- System captures inquiry, routes to operator
- Operator checks pre-negotiated time windows
- Calls/LINE messages course
- Updates system with confirmation
- E-voucher auto-generated
- **Operator time:** 15-20 minutes

### Fully Manual (legacy, being phased out)
- Inquiry via phone/email to agent
- Agent manually checks notes for course contact
- Calls course, writes down details
- Emails customer confirmation
- Customer prints/saves email
- **Operator time:** 30-45 minutes

**GolfOkay manual desk = middle ground.** Human confirmation, automated everything else.

---

## Scaling Manual Desk

**Month 3:** 15-20 packages, ~50% manual = 7-10 manual bookings
- Ops manager handles easily (1-2 hours/week)

**Month 6:** 30 packages/month, ~50% manual = 15 manual bookings
- Ops manager handles (3-4 hours/week)

**Month 9:** 60 packages/month, ~50% manual = 30 manual bookings
- Ops manager handles (7-10 hours/week)

**Month 12+:** 100+ packages/month, ~50% manual = 50 manual bookings
- **Need second ops staff** or shift toward more direct course relationships

---

## Direct Course Relationships (Manual Desk Reduction Strategy)

**Instead of eliminating manual desk, reduce its load:**

**Approach:**
- Identify top 10-15 courses by volume
- Negotiate direct relationships (better rates via volume commitments)
- Some may add API access as part of partnership
- Others stay manual but give priority time windows

**Result:**
- Still ~40% manual overall (down from 50%)
- Manual bookings are higher-margin (no aggregator fee)
- Pre-negotiated windows make manual faster

**Timeline:**
- Month 3-6: Identify top courses from booking data
- Month 6-9: Negotiate 5-10 direct relationships
- Month 9+: Manual % drops to 40%, efficiency improves

---

## See Also

- [[hybrid_integration]] - Overall API + manual strategy
- [[aggregator_apis]] - Automated booking alternative
- [[sla]] - Service level targets for manual desk
- [[e_vouchers]] - How confirmations are delivered
- [[distribution_reality]] - Why 50% of market is manual
