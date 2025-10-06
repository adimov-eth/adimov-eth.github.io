# GolfOkay GTM Strategy: Direct Package Sales

**Strategy:** Automate Tan's operation → Scale direct package sales → Reach profitability fast

**Not building:** SaaS products for competitor agents

**Capital:** ฿5M for 12-month runway

---

## Market Opportunity & Timing

### Market Size (Validated 2024-2025)

- **700K golf tourists annually** to Thailand (TAT, AGIF data)
- **~฿100K spend per trip** (3× average tourist)
- **~300 golf courses** nationwide (150-200 international standard)
- Historical 2012 market value: ฿86B; 2025 likely higher adjusted for volume/inflation

### Distribution Reality

- **60-70% of bookings** handled by agents via manual workflows (phone/LINE/email)
- **Only 15-20% of courses** have modern API-ready systems
- **50-55% of courses** still fully manual (accept this reality)
- Fragmented, inefficient processes dominate the market

### Digital Infrastructure Ready

- **PromptPay:** 81M users (2025), 0.8-1.5% fees vs 3%+ cards
- **Digital wallets:** 22% of POS transactions
- **Visa expansion:** 93 countries, 60-day stays (doubled from 30-day)
- **Mobile penetration:** High among expat/tourist segments

### Current State

**GolfOkay = Tan's TAT-licensed company.** Can sell packages as seller-of-record immediately. No regulatory blockers. Thai entity structure complete. Investor's transport network provides immediate ancillary revenue synergy.

---

## Competitive Landscape

### Weak Incumbents

- **Club Thailand Card:** 15K members, 200+ courses, legacy UX, no mobile app, opaque pricing
- **Golfasian:** 192K customers, dominant DMC, but email/phone only, no self-service platform
- **GolfNow:** Global platform, 3.5M users, lists Thai courses but weak local penetration
- **Major OTAs:** List golf resorts but no dedicated tee-time vertical

### Exploitable Gaps

- No unified platform (real-time booking + transport + accommodation)
- No price transparency or dynamic pricing
- No mobile-first UX for consumers
- No AI automation (50-65% of workflows automatable)
- Agents stuck with spreadsheets and manual confirmation calls

---

## Strategy: Direct Package Sales (Not B2B SaaS)

### Why Direct Sales

**Economics comparison:**
- B2B SaaS approach: $3-4K MRR in 90 days (10 agents × $300/month)
- Direct sales approach: $15-17K revenue in 90 days (20 packages × ~$800 margin)

**Unit economics per package:**
- Average package value: ฿100K (~$3,000)
- Commission (15%): ~$450
- Transport margin: ~$200
- Ancillaries (VIP fast-track, equipment, insurance): ~$100-200
- **Total margin per package: ~$750-850**

**Path to profitability:**
- 20 packages in 90 days = $15-17K revenue (validation)
- 75 packages/month by Month 9 = $56-64K revenue
- Break-even at ~50-60 packages/month (achievable Month 6-9)

**Why not SaaS for competitors:**
- $1,000/package margin >> $300/month SaaS seat
- Revenue scales with package volume, not seat count
- TAT license operational—can be seller-of-record immediately
- Agents would use our tools to train their future competitor

---

## GTM Phases

### Phase 1: Automate Tan's Operation (Months 0-3)

**Build internal tools (not products to sell):**

*Intake & CRM:*
- LINE/WhatsApp webhook integration
- Automatic inquiry capture and categorization
- Client profile management (preferences, history, notes)

*Quote Builder:*
- Template-based pricing (corridor bundles: Bangkok-Pattaya, Hua Hin, Phuket)
- Dynamic pricing rules (peak/off-peak, group discounts)
- Real-time aggregator API integration where available
- Manual desk fallback for non-API courses

*Booking Flow:*
- Automated tee-time confirmation (aggregator APIs)
- Manual desk workflow for legacy courses (50-55% of market)
- E-voucher generation with QR codes
- Supplier confirmation tracking

*Payment Processing:*
- PromptPay QR links (low fees, local preference)
- International card acceptance (Stripe/2C2P/Omise)
- Payment status tracking and reconciliation

*Operations Board:*
- Driver assignment and routing
- Course confirmation status
- Day-of-play issue tracking
- CSAT surveys post-trip

**Goal:** Process 20-30 packages through automated system in 90 days

**Revenue:** Direct package sales (~$1,000/package margin) + transport ancillaries

**Team:**
- CTO builds solo for 6-8 weeks
- Ops manager hired week 1-2 (฿30K/month + equity)
- Developer hired week 6-8 (฿50K/month + equity)

---

### Phase 2: Scale Direct Sales (Months 3-9)

**Increase package volume:**

*Supply side:*
- 2 aggregator partnerships signed and active (200-500 courses inventory)
- 10-15 direct course relationships (better rates via volume commitments)
- Manual desk handling 40-50% of confirmations efficiently

*Demand side:*
- Consumer LINE bot (lead capture, simple bookings, FAQ automation)
- SEO for "golf Thailand" keywords (Bangkok, Pattaya, Hua Hin, Phuket)
- Targeted ads to expat/digital nomad segments (Facebook, Google)
- Referral program (฿2-3K credit for successful referrals)

*Operations:*
- Team fully operational (ops manager + dev + CTO)
- Manual desk SLAs: <24hr quotes, <48hr confirmations for legacy courses
- 50-65% workflow automation achieved
- Transport attach rate ≥40%

**Target:** 50-100 packages/month by Month 9

**Profitability:** $50K-100K monthly revenue with 40-50% margins

---

### Phase 3: Selective B2B (Months 9+, If Beneficial)

**Only pursue if it accelerates direct sales:**

*White-label tools for courses (free, not SaaS revenue):*
- Give courses booking widgets/microsites
- In exchange: preferred inventory, better rates, exclusive access
- Not charging ฿8-15K/month—using tech as leverage for supply

*Hotel concierge portals (drive package volume):*
- Simple interface for hotel staff to request golf packages
- Routes demand to GolfOkay for fulfillment
- Revenue from packages, not portal fees

*Agent partnerships (qualified demand only):*
- Where agents bring high-value corporate/MICE bookings
- Revenue share on packages, not SaaS licensing
- Selective—don't enable competitors

**NOT building:** SaaS products for competing agents at $300/month

---

## Technology Integration Strategy

### Hybrid Approach (Accept Market Reality)

**Aggregator APIs (immediate):**
- Golfsavers (500+ courses, proven API)
- GolfThai (300+ Thai courses, 22 years experience)
- Launch week 1, instant inventory access

**Direct course integrations (selective):**
- Golfmanager API (open source, used by premium courses)
- Lightspeed Golf Partner API
- Only where volume justifies integration effort

**Manual desk (50-55% of market):**
- Staff handle phone/LINE confirmations for legacy courses
- Pre-negotiated time windows reduce coordination overhead
- Templated messaging and macros for efficiency
- This is NOT a failure—it's accepting reality

**Payment infrastructure:**
- PromptPay QR (0.8-1.5% fees, 81M users)
- International cards (Stripe for global tourists)
- E-voucher system for manual workflows

### AI Automation (50-65% Realistic Target)

**High-value automation:**
- FAQ handling: 85%+ achievable
- Simple booking requests: 65%+ achievable
- Price alerts and recommendations
- Itinerary modifications with clear parameters
- Payment processing

**Human escalation for:**
- Complex multi-destination packages
- Policy exceptions
- High-value corporate bookings
- Problem resolution

**Tech stack:**
- OpenAI GPT-4 for conversational interface
- Anthropic Claude for detailed analysis
- Aggregator APIs for real-time inventory
- PromptPay/Stripe for payment processing

---

## Capital Structure & Team

**Total committed capital:** ฿5M (~$150K USD) for 12-month runway

### Equity Structure

- CTO: 35% (4-year vest, 1-year cliff, early exercise allowed)
- CEO (Tan): Equal or higher ownership
- Investor: Remaining stake

### Compensation

**CTO:**
- ฿330K signing bonus (debt clearance, setup costs)
- ฿100K/month base
- Profit share reaching ฿200K+/month after Month 3 if metrics achieved

**CEO (Tan):**
- ฿100K/month base
- Profit share reaching ฿200K+/month after Month 3 if metrics achieved

**Team hires:**
- Operations manager: ฿30K/month starting month 1 (+ equity sweetener)
- Developer: ฿50K/month starting month 2 (+ equity sweetener)

### Performance Milestones (Profit Share Triggers)

**Month 3:**
- 15+ packages processed through automated system
- Unit economics validated (฿20K+ average margin/package)
- 50%+ workflow automation achieved

**Month 6:**
- 30+ packages/month sustained run rate
- 2 aggregator partnerships signed and active
- Team fully operational

**Month 9:**
- 60+ packages/month run rate
- Revenue covering ≥40% operating costs
- Clear path to profitability documented

### Burn Rate

- Months 0-3: ~฿390K/month (~$11.7K) including signing bonus amortization
- Months 4-12: ~฿280-480K/month (~$8-14K) depending on profit share achievement
- **12-month runway with ฿5M commitment**

### Governance

- **CTO:** Full autonomy over tech stack, product roadmap, vendor selection
- **CEO:** Handles sales, partnerships, investor relations
- **Conflicts:** 48hr discussion → investor decides if unresolved
- **Pivot:** Major strategy changes require CTO agreement

### Exit Terms

- Either party: 60-day notice
- Vested equity retained, unvested forfeited
- Terminated without cause: 3 months severance + 25% unvested accelerated

---

## 90-Day Execution Plan

### Weeks 1-2: Foundation

**Immediate actions:**
- Sign 2 aggregator MOUs (Golfsavers, GolfThai for instant inventory)
- Lock automation scope (LINE → quote → booking → ops)
- Staff operations coordinator ฿30K/month (manual desk coverage)
- Integrate PromptPay + card payment rails (Stripe/2C2P)

**Deliverables:**
- Aggregator contracts signed
- Ops coordinator hired and trained
- Payment infrastructure live
- Development environment set up

### Weeks 3-6: Build & Ship

**Build:**
- Automated booking flow v0.1
- LINE webhook integration
- Quote builder with price templates
- E-voucher generation
- Operations board (basic)

**Ship:**
- Process first 5 packages through system
- Validate unit economics with actual data
- Test manual desk SLAs with real bookings

**Deliverables:**
- v0.1 deployed to production
- First 5 packages completed
- Unit economics validated (or adjusted)

### Weeks 7-10: Scale

**Increase volume:**
- Process 10-15 packages
- Hire developer to assist CTO (฿50K/month)
- Refine automation based on real usage patterns

**Optimize:**
- Hit 50-65% automation targets for simple workflows
- Achieve transport attach rate ≥40%
- Manual desk efficiency improvements

**Deliverables:**
- 10-15 packages processed
- Developer onboarded
- Automation metrics hitting targets

### Weeks 11-13: Prove

**Validate model:**
- Process 20-30 total packages through system
- Revenue: $15K-17K from packages + transport
- CSAT ≥4.6/5
- Quote SLA: <24hr for standard requests

**Document:**
- Updated pricing study (replace 2012 ฿/trip baseline with 2025 data)
- Detailed unit economics breakdown
- Path to profitability model (Month 9 targets)

**Deliverables:**
- 20-30 packages completed
- $15K-17K revenue achieved
- Path to profitability documented

---

## KPIs & Success Metrics

### 90-Day Targets

- **Revenue:** $15K-17K (package sales + transport ancillaries)
- **Volume:** 20-30 packages processed
- **Automation:** 50-65% of workflows automated
- **Proof:** Unit economics validated, profitable path visible

### Month 9 Targets

- **Volume:** 75+ packages/month
- **Revenue:** $56-64K/month
- **Margin:** 40-50%
- **Break-even visibility:** Clear path documented

### Operational KPIs

- **Quote SLA:** <24hr for standard requests
- **Confirmation SLA:** <48hr for manual course bookings
- **CSAT:** ≥4.6/5 average
- **Transport attach rate:** ≥40% of packages
- **Automation coverage:** 50-65% of simple workflows
- **Manual desk efficiency:** Handle 60% of confirmations with 1 FTE

---

## Critical Success Factors

1. **Aggregator partnerships:** Must sign Golfsavers + GolfThai or equivalent for instant inventory
2. **Manual desk efficiency:** Accept 50-55% manual reality, optimize workflows
3. **Unit economics validation:** Real data from first 5-10 packages confirms margins
4. **Transport attach rate:** 40%+ critical for ancillary revenue
5. **Automation targets:** 50-65% achievable with realistic scope
6. **Team hiring:** Ops manager week 1-2, developer week 6-8 timing matters
7. **Payment integration:** PromptPay + cards live by week 2 for fast checkout

---

## Risk Mitigation

**Integration complexity:**
- Hybrid approach accepted from day 1
- Manual desk staffed early (week 1-2)
- Not trying to API-connect every course

**Demand validation:**
- Processing Tan's existing flow first (proven demand)
- Consumer marketing only after automation works (Month 3+)
- B2B only if it drives direct volume (Month 9+)

**Capital efficiency:**
- Lower ฿100K/month base (lean months 0-3)
- Profit share aligns incentives with package volume
- 12-month runway with reduced burn allows pivot room if needed

**Team capacity:**
- CTO builds solo 6-8 weeks (realistic MVP scope)
- Ops manager early hire (protect manual desk SLAs)
- Developer mid-quarter (helps scale, not critical for v0.1)

---

## Why This Works

- **TAT license active:** No regulatory blockers, can operate immediately
- **Direct sales economics:** $1,000/package >> $300/month SaaS
- **Hybrid integration:** Accepts market reality (manual desk required)
- **Fast validation:** 20-30 packages in 90 days proves model
- **Clear profitability:** 75 packages/month = $56-64K revenue (break-even visible)
- **Strong incentives:** 35% equity, equal partnership comp, performance bonuses

**The path to profitability is packages, not SaaS seats.**

20 packages in 90 days = $15-17K revenue
75 packages by Month 9 = path to profitability clear
