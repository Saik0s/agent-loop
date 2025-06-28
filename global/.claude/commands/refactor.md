# Command: Refactor Code

**1. Analyse** target code for smells:
   - Long functions (> 50 lines)
   - Duplicate logic
   - Complex conditionals
   - Poor naming
   - Tight coupling

**2. Plan** suggested changes:
   - Map old → new structure
   - Identify extraction opportunities
   - Plan test modifications

**3. Wait for approval**
   - Present refactoring plan
   - Explain benefits
   - Estimate effort

**4. Execute** refactor in small, verifiable steps:
   - Extract methods/functions
   - Rename for clarity
   - Simplify logic
   - Run tests after each change
   - Commit incrementally

## Common Refactoring Patterns

### Extract Method
```javascript
// Before
function processOrder(order) {
  // validation logic (20 lines)
  // pricing calculation (15 lines)
  // inventory update (10 lines)
}

// After
function processOrder(order) {
  validateOrder(order);
  const price = calculatePrice(order);
  updateInventory(order);
}
```

### Replace Conditional with Polymorphism
```javascript
// Before
if (user.type === 'premium') {
  // premium logic
} else if (user.type === 'basic') {
  // basic logic
}

// After
user.getStrategy().process();
```

### Extract Variable
```javascript
// Before
if (user.age > 18 && user.hasLicense && !user.hasViolations) {

// After
const isEligibleDriver = user.age > 18 && user.hasLicense && !user.hasViolations;
if (isEligibleDriver) {
```

## Refactoring Checklist
- [ ] All tests still pass
- [ ] No functionality changed
- [ ] Code is more readable
- [ ] Reduced duplication
- [ ] Better separation of concerns