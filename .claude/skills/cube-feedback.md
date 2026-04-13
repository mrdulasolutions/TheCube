---
name: cube-feedback
description: "The Cube Feedback - Structured feedback collection after a Cube analysis. Captures which rotations were most/least valuable, what surprised the user, and what to improve. Saves telemetry to .cube/feedback/ for future development."
---

<cube-feedback>

# THE CUBE -- Feedback Collection

You are collecting structured feedback on a Cube analysis. This feedback helps improve The Cube by identifying which rotations produce the most value, which are redundant, and what users need that the current protocol does not provide.

---

## STEP 1: IDENTIFY THE ANALYSIS

Check the current conversation for a recent Cube report. If one exists, reference it. If not, ask:

> **Which Cube analysis would you like to give feedback on?**
> Briefly describe the problem you analyzed, or paste the Core Lock statement.

---

## STEP 2: STRUCTURED FEEDBACK

Walk the user through these questions. Accept brief answers -- do not require paragraphs.

### Value Assessment

> **1. Which positions gave you the most unexpected or valuable insight?**
> (List position numbers or names, e.g., "Position 7 - The Autopsy, Position 28 - The Anvil")

> **2. Which positions felt redundant or low-value?**
> (List position numbers or names)

> **3. Was there an angle you wished The Cube had covered but didn't?**
> (Describe what was missing)

### Impact Assessment

> **4. Did The Cube change how you see the problem?**
> (Yes completely / Yes partially / Not really / No)

> **5. If yes, what was the single biggest reframe?**
> (One sentence)

> **6. Did you act on any of the recommendations?**
> (Yes / Planning to / No / Too early to tell)

### Experience Assessment

> **7. Was the analysis the right length?**
> (Too long / About right / Too short)

> **8. Which mode did you use?**
> (/cube full / /cube-quick / /cube-guided / /cube-face)

> **9. Would you use The Cube again?**
> (Definitely / Probably / Unsure / No)

> **10. Anything else?**
> (Open text)

---

## STEP 3: SAVE FEEDBACK

After collecting responses, compile into a structured feedback file and save it.

Create the directory if it does not exist:
```
.cube/feedback/
```

Save the feedback as a markdown file named with the date and a slug from the problem:
```
.cube/feedback/[YYYY-MM-DD]-[problem-slug].md
```

File format:
```markdown
# Cube Feedback
## Problem: [short description]
## Date: [date]
## Mode: [which /cube command was used]

### Most Valuable Positions
[list]

### Least Valuable Positions
[list]

### Missing Angles
[description or "none"]

### Changed Perspective
[yes/no + reframe description]

### Acted On Recommendations
[response]

### Length Assessment
[too long / about right / too short]

### Would Use Again
[response]

### Additional Notes
[open text]

### Telemetry
- Total positions analyzed: [number]
- Problem domain: [from Core Lock]
- Time sensitivity: [from Core Lock]
- Complexity assessment: [if available from the analysis]
```

---

## STEP 4: THANK AND SUGGEST

After saving:

> **Feedback saved to `.cube/feedback/[filename]`.**
>
> This helps improve The Cube for everyone. If you'd like to contribute your feedback to the project:
> - Open an issue on the GitHub repo with the "feedback" label
> - Or include the feedback file in a pull request
>
> Thank you for helping make The Cube better.

---

## EXECUTION NOTES

1. **Keep it fast.** The feedback collection should take under 2 minutes. Accept one-word answers.
2. **Do not argue with feedback.** If the user says a position was low-value, record it. Do not defend the position.
3. **Aggregate value.** The real value of this feedback is across many users. One person's "low value" position might be another's breakthrough. The data matters in aggregate.
4. **Save everything.** Even if the user gives minimal responses, save what you have. Partial feedback is better than none.

</cube-feedback>
