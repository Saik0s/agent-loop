# Command: Propose Solutions

**Task**: Generate **three** distinct, viable solutions to `$ARGUMENTS`.

For each solution produce:
* Approach summary (≤ 2 sentences)
* Pros (bullets)
* Cons (bullets)

Finish with a one-line recommendation selecting the best candidate.

## Example Output:

### Solution 1: Monolithic Architecture
Single deployable unit with all features integrated. Simple deployment and debugging.
**Pros:**
- Easy to develop and test
- Single codebase to maintain
- No network latency between components

**Cons:**
- Difficult to scale individual components
- Technology lock-in
- Large deployment size

### Solution 2: Microservices Architecture
Separate services for each domain. Independent deployment and scaling.
**Pros:**
- Independent scaling
- Technology flexibility
- Fault isolation

**Cons:**
- Complex deployment
- Network overhead
- Distributed system challenges

### Solution 3: Serverless Functions
Event-driven compute with pay-per-use pricing. Auto-scaling built-in.
**Pros:**
- No infrastructure management
- Automatic scaling
- Cost-effective for variable loads

**Cons:**
- Vendor lock-in
- Cold start latency
- Limited execution time

**Recommendation:** Choose Solution 2 (Microservices) for long-term scalability and team autonomy.