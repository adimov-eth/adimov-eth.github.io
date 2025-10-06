# Commission Model

How golf booking revenue works. Foundation of [[unit_economics|GolfOkay's unit economics]].

## Standard Golf Booking Commission

**Typical structure:**
- Golf course list price: ฿3,000 green fee
- Agent/platform books on behalf of customer
- Course pays 12-20% commission to agent
- Customer pays ฿3,000 (same as list price)

**Agent margin:** ฿360-600 per booking

**Or markup model:**
- Course gives agent "net rate": ฿2,400
- Agent sells at ฿3,000
- Agent keeps difference: ฿600

Both models exist. GolfOkay will encounter both.

## GolfOkay Package Model

**Average package value:** ฿100,000 (~$3,000)

**Revenue breakdown:**
1. **Golf commission (15%):** ~$450
   - 2-4 rounds per trip
   - Average ฿2,500/round net rate
   - 15% commission per booking

2. **Transport margin:** ~$200
   - Airport pickup: ฿1,200
   - Course transfers (4× round-trip): ฿4,800
   - Hotel transfers: ฿800
   - Total transport: ฿6,800 ($200)
   - Investor's transport network provides at cost
   - Platform keeps margin

3. **Ancillaries:** ~$100-200
   - VIP fast-track: ฿70-100/person
   - Equipment rental: ฿800-1,200/trip
   - Travel insurance: 3-5% of package value
   - Caddy tips pre-booking: ฿1,000-1,500

**Total margin per package: ~$750-850**

## Why This Beats B2B SaaS

**Direct package economics:**
- $750-850 margin per package
- 20 packages in 90 days = $15K-17K revenue
- Scales with volume (more packages = more revenue)

**B2B SaaS comparison:**
- $300/month per agent
- 10 agents in 90 days = $3K MRR
- Capped by agent count (not volume)

**5x difference** in first 90 days. Package model wins when [[tat_license|TAT license]] allows direct sales.

## Commission Variation by Course Tier

**High-end courses** (Blue Canyon, Siam Country Club):
- List price: ฿5,000-8,000
- Commission: 10-12% (lower % due to high demand)
- Absolute margin: ฿500-960

**Mid-tier courses** (most Pattaya, Bangkok courses):
- List price: ฿2,000-3,500
- Commission: 15-18%
- Absolute margin: ฿300-630

**Budget courses:**
- List price: ฿1,000-1,800
- Commission: 18-22% (higher % to incentivize bookings)
- Absolute margin: ฿180-396

**Strategy:** Mix of all tiers. High-end for prestige/margins, mid-tier for volume, budget for price-sensitive customers.

## Aggregator Commission Impact

**If using [[aggregator_apis|aggregator APIs]]:**
- Course commission: 15%
- Aggregator takes: 3-5%
- Net to GolfOkay: 10-12%

**Direct relationship:**
- Course commission: 15%
- No aggregator cut
- Net to GolfOkay: 15%

**Break-even:** If course generates >10 bookings/month, direct relationship saves ฿90-150 per booking × 10 = ฿900-1,500/month. Worth negotiating direct.

## Transport Margin Deep-Dive

**Investor advantage:** Operates transport/concierge network in Bangkok & Pattaya

**Cost structure:**
- Driver + vehicle: ฿1,500/day
- Airport pickup (Suvarnabhumi → Bangkok): ฿1,200 (1.5hr)
- Course transfer round-trip: ฿1,200 each (4 rounds = ฿4,800)
- Total cost: ~฿6,000-6,500
- Charged to customer: ฿8,000-9,000
- Margin: ฿2,000-2,500 per package

**40% [[transport_attach_rate|attach rate]] target:** If 40% of packages include transport, adds ~$80-100 per package across all bookings.

## Ancillary Revenue Opportunities

**VIP fast-track** (airport immigration):
- Cost: ฿70/person (via provider)
- Sell: ฿150/person
- Margin: ฿80/person × 2 people = ฿160

**Equipment rental:**
- Cost: ฿600/set (4 days)
- Sell: ฿1,200/set
- Margin: ฿600 (if 30% take rate)

**Travel insurance:**
- Cost: 2% of package value
- Sell: 5% of package value
- Margin: 3% = ฿3,000 on ฿100K package

**Caddy tips pre-booking:**
- Convenience fee: 5%
- Customer pays ฿1,500 for caddies (4 rounds × ฿300 tip)
- Platform charges ฿1,575
- Margin: ฿75

**Total ancillary potential:** ฿3,835 per package (~$115) if all attach.

**Realistic:** 50-60% of packages have ≥1 ancillary = ~$60-70 blended margin per package.

## Seasonality Impact

**High season** (Nov-Mar):
- Course prices +30-50%
- Commission % same, but absolute margin higher
- Example: ฿4,000 green fee × 15% = ฿600 (vs ฿450 low season)

**Low season** (Apr-Oct):
- Prices drop 40-50%
- Volume increases (budget travelers, expats)
- Lower margin per package, but higher volume compensates

**Blended margin:** ~฿25,000 per package year-round (฿30K high season, ฿20K low season)

## Corporate/Group Bookings

**Different commission structure:**
- Groups of 8-16 players
- Negotiated rates with courses (typically lower green fees)
- Higher volume = better terms
- Commission: 10-12% (lower %) but larger absolute numbers

**Example:**
- 12 players, 3 rounds each = 36 bookings
- Net rate: ฿2,000/round (discounted from ฿2,500)
- Total: ฿72,000 green fees
- Commission (12%): ฿8,640
- Transport for group: ฿15,000 (2 vans, 4 days)
- Total package margin: ~฿10,000-12,000

**Corporate attach rate:** 15-20% of volume, but 25-30% of margin (larger packages).

## Path to Profitability

**Month 3:** 20 packages × ฿25,000 avg margin = ฿500K revenue ($15K)

**Month 6:** 40 packages × ฿25,000 = ฿1M revenue ($30K)

**Month 9:** 75 packages × ฿25,000 = ฿1.875M revenue ($56K)
- Burn rate: ฿480K (CTO ฿200K + Tan ฿200K + ops ฿30K + dev ฿50K)
- **Profit:** ฿1.395M (~$42K)

**Commission model enables profitability at 75-80 packages/month** when combined with transport margin + ancillaries.

## See Also

- [[unit_economics]] - Full margin breakdown per package
- [[transport_attach_rate]] - How transport revenue scales
- [[aggregator_apis]] - Impact of aggregator fees on commission
- [[tat_license]] - Why license enables direct commission capture
