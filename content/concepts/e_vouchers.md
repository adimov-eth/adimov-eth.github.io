# E-Vouchers

**Electronic booking confirmations that customers present at golf courses.**

Digital replacement for paper booking slips. Critical for [[hybrid_integration|hybrid (API + manual)]] operations.

---

## What E-Vouchers Contain

**Booking details:**
- Course name and location
- Date and tee time
- Number of players
- Package inclusions (transport, equipment, etc.)

**Verification:**
- Unique booking ID
- QR code for scanning
- Customer name

**Terms:**
- Cancellation policy
- Weather policy
- Payment status (paid/pending/refunded)

---

## Why E-Vouchers Are Needed

### Manual Desk Workflows
50-55% of courses don't have APIs. Bookings confirmed via phone/LINE.

**E-voucher is the digital proof of that [[manual_desk|manual booking]].**

Without it:
- Customer has no confirmation to show course
- Course staff don't know booking exists
- Payment status unclear
- Customer prints email (friction)

With e-voucher:
- Customer receives PDF/image instantly
- Shows phone screen at course check-in
- Course scans QR or checks ID against list
- Payment linked in system

### Customer Convenience
- Send via LINE/email (no paper needed)
- View on phone (no printing)
- QR code = fast check-in
- Includes all details in one place

### Course Verification
- Staff scan QR code → booking details appear
- Or manually check booking ID against daily list
- Confirms: name, tee time, number of players, payment status

### Payment Tracking
- E-voucher links to payment record
- Shows: Paid (green), Pending (yellow), Refunded (red)
- Course knows whether to collect payment on-site

---

## E-Voucher Generation Flow

### Automated Bookings (API courses)
1. Customer books via LINE bot or platform
2. [[aggregator_apis|Aggregator API]] or direct course API confirms instantly
3. System generates e-voucher with booking details
4. E-voucher sent to customer via LINE/email
5. QR code links to booking record

**Time:** Instant (< 10 seconds)

### Manual Bookings (non-API courses)
1. Customer books via LINE bot or platform
2. System routes to [[manual_desk|manual desk]]
3. Operator calls/messages course, confirms tee time
4. Operator updates system with confirmation
5. System auto-generates e-voucher
6. E-voucher sent to customer via LINE/email

**Time:** <48hr (per [[sla|confirmation SLA]])

---

## E-Voucher Example

```
╔══════════════════════════════════════╗
║      GOLFOKAY BOOKING VOUCHER        ║
╚══════════════════════════════════════╝

📅 Date: October 15, 2025
⏰ Tee Time: 10:00 AM
🏌️ Course: Springfield Golf Club
👥 Players: 2

Booking ID: GO-2025-001234
Customer: John Smith

Package Includes:
✓ 18 holes green fee
✓ Golf cart
✓ Airport pickup & drop-off

[QR CODE]

Payment: ✓ Paid (฿6,000)

Cancellation: Free up to 48hr before
Weather: Rain check available

Questions? LINE: @golfokay
```

---

## Technical Implementation

### Generation
- Template-based (Handlebars/EJS)
- PDF or PNG image output
- QR code generated with booking ID
- Includes branding (logo, colors)

### Delivery
- LINE message (most customers)
- Email attachment (fallback)
- In-app view (if mobile app exists)

### QR Code Contents
- Booking ID (links to database record)
- Course ID
- Date + tee time
- Verification hash (prevent forgery)

### Course Verification
- Course scans QR → Web view shows booking details
- Or course checks daily list (exported from system)
- Manual fallback: Phone support to verify booking ID

---

## E-Voucher vs Traditional Confirmations

### Traditional (email confirmation)
- Customer receives text email
- Prints or screenshots
- Course manually checks email against their list
- No payment status visibility
- No QR verification

### GolfOkay E-Voucher
- Customer receives formatted voucher (PDF/image)
- Views on phone (no print needed)
- Course scans QR for instant verification
- Payment status shown clearly
- Linked to system (updates in real-time)

**Key difference:** E-voucher is system-integrated, not just a formatted message.

---

## Edge Cases

### Lost E-Voucher
- Customer can request re-send via LINE
- System looks up booking by phone number or name
- Re-sends same e-voucher

### Course Can't Scan QR
- E-voucher includes booking ID text
- Course manually enters ID on verification page
- Or calls support line for manual verification

### Booking Changed After E-Voucher Sent
- New e-voucher generated automatically
- Old voucher shows "CANCELLED" when scanned
- Customer receives updated voucher via LINE

### Payment Status Changes
- E-voucher updates in real-time (if viewed via link)
- Static PDF shows status at generation time
- QR scan always shows current payment status

---

## Metrics to Track

**E-voucher effectiveness:**
- % of customers who receive e-voucher successfully (target: >95%)
- % of courses that can verify QR codes (target: >80%)
- Time from booking to e-voucher delivery (target: <10 min for API, <48hr for manual)
- Customer support requests about e-vouchers (target: <5% of bookings)

**Failure modes:**
- E-voucher send failures (LINE/email bounces)
- QR code scan failures (course tech issues)
- Booking ID mismatches (data entry errors)
- Payment status sync issues

---

## Future Enhancements

**Digital wallet integration:**
- Apple Wallet / Google Pay pass
- E-voucher appears in phone wallet app
- Push notifications for tee time reminders

**Dynamic updates:**
- E-voucher shows live weather at course
- Traffic updates for travel time
- Course conditions (maintenance, delays)

**Multi-course packages:**
- Single e-voucher with multiple QR codes
- One per course in multi-day package
- Itinerary view with all bookings

---

## See Also

- [[manual_desk]] - How manual bookings trigger e-voucher generation
- [[hybrid_integration]] - Why e-vouchers are critical for API + manual mix
- [[sla]] - E-voucher delivery time commitments
- [[promptpay]] - Payment status shown in e-voucher
