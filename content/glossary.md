# GolfOkay Glossary

## E-Vouchers

E-vouchers are **electronic booking confirmations** that customers present at the golf course.

**What they contain:**
- Booking details (course, date, tee time, number of players)
- Customer name
- Unique booking ID
- QR code for verification
- Terms/cancellation policy

**Why needed:**
- **Manual desk workflows:** 50-55% of courses don't have APIs. They confirm via phone/LINE. E-voucher is the digital proof of that manual booking.
- **Customer convenience:** Send via LINE/email, no paper printout needed
- **Course verification:** Staff scan QR code or check ID against their list
- **Payment tracking:** Links to payment status (paid/pending/refunded)

**Flow:**
1. Booking confirmed (via API or manual desk)
2. System generates e-voucher with QR code
3. Sent to customer via LINE/email
4. Customer shows at course (phone screen or print)
5. Course verifies and allows play

**Example use case:**
- Customer books via LINE bot
- Manual desk calls course, confirms 10am tee time
- System generates e-voucher: "Booking #12345, Springfield Golf Club, Oct 15 10:00am, 2 players"
- Customer receives PDF/image with QR code
- Shows phone at course check-in

Basically: digital replacement for paper booking confirmations, critical for hybrid (API + manual) operations.

---

## Manual Desk

**What it is:** Human staff handling golf course bookings via phone/LINE/email when API integration isn't available.

**Why it exists:** 50-55% of Thai golf courses don't have modern booking APIs. They only accept reservations via phone or LINE chat.

**How it works:**
1. Customer inquiry comes in (via LINE bot or platform)
2. System identifies course has no API
3. Routes request to manual desk operator
4. Operator calls/messages course directly
5. Confirms tee time manually
6. Updates system, generates e-voucher

**NOT a failure:** This is accepting market reality. Even with automation, manual desk will handle 40-50% of bookings long-term.

**Efficiency targets:**
- <24hr quote SLA for standard requests
- <48hr confirmation for legacy courses
- Pre-negotiated time windows reduce coordination overhead
- Templated messaging and macros for efficiency

---

## Aggregator APIs

**What they are:** Third-party platforms that connect to multiple golf courses and expose a unified API for booking.

**Examples:**
- **Golfsavers:** 500+ courses, proven API
- **GolfThai:** 300+ Thai courses, 22 years experience

**Why use them:**
- **Instant inventory:** 200-500 courses accessible from day 1
- **No individual integrations:** One API instead of negotiating with each course
- **Real-time availability:** See open tee times immediately
- **Standardized format:** Consistent booking flow across courses

**Tradeoff:**
- Pay commission to aggregator (on top of course commission)
- Less control over pricing/terms vs direct relationships
- Still miss 50-55% of market (courses not on aggregators)

**Strategy:** Use aggregators for immediate launch, build direct course relationships for better margins over time.

---

## PromptPay

**What it is:** Thailand's national real-time payment system, like Venmo/Zelle but government-backed.

**Key stats:**
- 81M users (2025)
- 0.8-1.5% transaction fees (vs 3%+ for credit cards)
- QR code payments
- Instant settlement

**Why it matters for GolfOkay:**
- **Local preference:** Thai customers prefer PromptPay over cards
- **Lower fees:** Saves ~1.5-2% per transaction vs cards
- **Fast checkout:** Scan QR, pay from any Thai bank app
- **No chargebacks:** Direct bank transfer (not credit)

**Integration:**
- Generate PromptPay QR code with booking amount
- Send to customer via LINE
- Customer scans & pays from their bank app
- Webhook confirms payment
- System releases e-voucher

---

## TAT License

**What it is:** Tourism Authority of Thailand license required to operate as a tour operator/travel agent.

**Status for GolfOkay:** **Active and operational.** Tan's company has TAT license.

**What it allows:**
- Sell travel packages as seller-of-record
- Accept payment directly from customers
- Issue bookings/confirmations in company name
- Operate transport services for tourists

**Why it matters:**
- **No regulatory blockers:** Can process packages from day 1
- **Direct sales model:** No need for partner-of-record workarounds
- **Revenue capture:** Keep full margin, not revenue share with licensed partner

**Previous assumption (wrong):** Docs originally assumed license wasn't available, built entire B2B-first SaaS strategy around pre-license compliance. License being active changed everything → pivot to direct package sales.

---

## Commission-Based Revenue

**How golf booking commissions work:**

**Standard model:**
- Golf course sells tee time at ฿3,000
- Agent/platform books on behalf of customer
- Course pays 12-20% commission to agent
- Agent charges customer ฿3,000 (or adds markup)

**GolfOkay model:**
- Average package value: ฿100K (~$3,000)
- Golf commission (15%): ~$450
- Transport margin: ~$200 (via Investor's network)
- Ancillaries (insurance, equipment, VIP services): ~$100-200
- **Total margin per package: ~$750-850**

**Why this beats SaaS:**
- $750-850 per package vs $300/month SaaS subscription
- Revenue scales with package volume (not seat count)
- 20 packages = $15K-17K revenue (90 days)
- 75 packages/month = $56-64K revenue (Month 9, path to profitability)

---

## Hybrid Integration Approach

**The reality:** Only 15-20% of Thai golf courses have modern APIs. 50-55% are fully manual (phone/LINE only).

**GolfOkay's approach:**
1. **Aggregator APIs (immediate):** Golfsavers, GolfThai for 200-500 courses
2. **Direct course APIs (selective):** Golfmanager, Lightspeed where volume justifies effort
3. **Manual desk (50-55%):** Human staff handle phone/LINE confirmations

**Why hybrid:**
- Can't API-connect every course (they don't have systems)
- Aggregators provide instant inventory but miss 50% of market
- Manual desk is NOT a failure—it's accepting market reality

**Automation targets:**
- 50-65% of workflows automated (FAQ handling 85%, simple bookings 65%)
- Manual desk handles complex packages, exceptions, high-value corporate
- Both coexist: some bookings fully automated, others human-assisted

---

## Transport Attach Rate

**What it is:** Percentage of golf packages that include transport services.

**Target:** ≥40% of packages

**Why it matters:**
- **Ancillary revenue:** ~$200 margin per package with transport
- **Investor synergy:** Investor operates transport/concierge network
- **Customer value:** Golf tourists need airport pickup, course transfers, hotel transport

**How to increase:**
- Bundle transport in default package pricing
- Offer "golf + transport" packages at discount vs separate booking
- Highlight convenience (driver knows courses, handles clubs, multilingual)

**Economics:**
- Package without transport: ~$550 margin (commission + ancillaries)
- Package with transport: ~$750 margin (commission + transport + ancillaries)
- 40% attach rate on 75 packages = 30 packages with transport = +$6K/month revenue

---

## SLA (Service Level Agreement)

**GolfOkay operational SLAs:**

**Quote SLA:** <24hr for standard requests
- Customer sends inquiry via LINE
- System or manual desk provides price quote within 24 hours
- "Standard" = single course, 2-4 players, clear dates

**Confirmation SLA:** <48hr for manual course bookings
- After customer accepts quote
- Manual desk confirms tee time with course within 48 hours
- E-voucher issued once confirmed

**Why they matter:**
- **Customer experience:** Fast quotes = higher conversion
- **Operational efficiency:** SLAs force process optimization
- **Manual desk benchmark:** Proves hybrid model works at scale

**Month 3 target:** Hit both SLAs with 50%+ automation on simple workflows.

---

## CSAT (Customer Satisfaction Score)

**What it is:** Post-trip customer satisfaction rating (1-5 scale).

**Target:** ≥4.6/5 average

**How measured:**
- Automated survey sent after trip completion
- Questions: booking ease, course quality, transport (if used), overall experience
- 5 = excellent, 4 = good, 3 = okay, 2 = poor, 1 = terrible

**Why it matters:**
- **Retention:** CSAT ≥4.5 correlates with repeat booking rate
- **Referrals:** High CSAT drives word-of-mouth (referral program leverage)
- **Process feedback:** Low scores identify broken workflows

**Month 3 milestone:** CSAT ≥4.6/5 proves product-market fit, not just volume.
