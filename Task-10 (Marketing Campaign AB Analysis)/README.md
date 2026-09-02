# Task 10: Marketing Campaign A/B Analysis

## 1. Project Overview

This project evaluates whether a new marketing advertisement (`ad`) produced a higher product conversion rate than a control campaign (`psa`), which showed users a public service announcement.

The analysis uses **A/B testing and statistical inference** to determine whether the observed difference in conversion rates is statistically significant rather than simply due to random variation.

### Business Question

> Did the new advertisement increase the percentage of users who purchased the product compared with the PSA/control campaign?

---

## 2. Dataset

**Dataset:** Marketing A/B Testing Dataset

**Source:** Kaggle  
https://www.kaggle.com/datasets/faviovaz/marketing-ab-testing

The dataset contains information about users who were exposed to either the advertisement campaign or the PSA control campaign.

### Main Variables

| Column | Description |
|---|---|
| `user id` | Unique identifier for each user |
| `test group` | Experimental group: `ad` or `psa` |
| `converted` | Whether the user converted/purchased (`1`) or not (`0`) |
| `total ads` | Number of advertisements seen by the user |
| `most ads day` | Day on which the user saw the most advertisements |
| `most ads hour` | Hour at which the user saw the most advertisements |

The original `Unnamed: 0` column was removed because it was only an index generated when the dataset was saved and does not represent a meaningful analytical variable.

---

## 3. Tools and Libraries

- Python
- Jupyter Notebook
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SciPy
- Statsmodels

---

## 4. Analysis Workflow

The project follows these steps:

1. Load the dataset
2. Inspect the data
3. Clean the dataset
4. Compare the experimental groups
5. Calculate conversion rates
6. Calculate absolute and relative lift
7. Perform a two-proportion Z-test
8. Calculate the p-value
9. Calculate 95% confidence intervals
10. Visualise the conversion-rate lift
11. Estimate additional customers from a full rollout
12. Provide a business recommendation

---

## 5. Data Preparation

The dataset was loaded using Pandas and inspected for:

- Dataset dimensions
- Data types
- Missing values
- Duplicate records
- Unique users
- Experimental groups
- Conversion values

The unnecessary `Unnamed: 0` index column was removed before analysis.

---

## 6. Conversion Rate Analysis

Conversion rate was calculated as:

> Number of converted users / Total users

The two groups were:

- **Ad group:** Users exposed to the new advertisement
- **PSA group:** Users exposed to the public service announcement/control

The observed results were approximately:

| Group | Users | Conversions | Conversion Rate |
|---|---:|---:|---:|
| Ad | 564,577 | 14,423 | 2.55% |
| PSA | 23,524 | 420 | 1.79% |

The advertisement group therefore had a higher observed conversion rate.

---

## 7. Conversion Rate Lift

### Absolute Lift

Absolute lift measures the difference between the two conversion rates:

> Ad Conversion Rate − PSA Conversion Rate

The estimated absolute lift was approximately:

**0.76 percentage points**

This means that for every 100 users, the advertisement generated approximately 0.76 additional conversions compared with the PSA campaign.

### Relative Lift

Relative lift compares the improvement with the control group's conversion rate.

The observed relative improvement was approximately:

**43%**

Therefore, the advertisement campaign produced approximately a 43% higher conversion rate relative to the PSA control group.

---

## 8. Hypothesis Testing

A **two-proportion Z-test** was used because the objective was to compare conversion proportions between two independent groups.

### Null Hypothesis (H₀)

> There is no difference in conversion rates between the advertisement and PSA groups.

```text
H₀: p_ad = p_psa
```

### Alternative Hypothesis (H₁)

> There is a difference in conversion rates between the advertisement and PSA groups.

```text
H₁: p_ad ≠ p_psa
```

### Significance Level

```text
α = 0.05
```

This corresponds to a **95% confidence level**.

### Decision Rule

- If `p-value < 0.05`: Reject H₀
- If `p-value ≥ 0.05`: Fail to reject H₀

The analysis produced a p-value below the 0.05 significance level.

### Statistical Conclusion

The null hypothesis was rejected.

Therefore, there is **statistically significant evidence that the conversion rates differ between the advertisement and PSA groups**.

The positive observed lift indicates that the new advertisement performed better than the PSA control campaign.

---

## 9. Confidence Interval

A 95% confidence interval was calculated for the difference in conversion rates.

The estimated lift was approximately:

**0.76 percentage points**

with a 95% confidence interval of approximately:

**0.59 to 0.94 percentage points**

The confidence interval is entirely above zero.

### Interpretation

Because zero is not included in the confidence interval, the data provides evidence of a statistically significant positive effect.

In practical terms:

> The true conversion-rate improvement associated with the advertisement is estimated to be between approximately 0.59 and 0.94 percentage points at the 95% confidence level, assuming the experimental design and underlying conditions remain appropriate.

---

## 10. Visualisation

The **Conversion Rate Lift with 95% Confidence Interval** chart shows:

- The estimated conversion-rate improvement
- The uncertainty around the estimate
- A horizontal zero line representing no difference

The estimated lift was approximately **0.76 percentage points**.

Because the confidence interval remains above the zero line, the result supports a positive treatment effect.

---

## 11. Estimated Business Impact

To understand the potential business impact, the observed conversion-rate difference was applied to a hypothetical rollout of **1,000,000 users**.

The estimated result was:

> **Approximately 7,692 additional customers per 1 million users.**

### Interpretation

If the new advertisement were shown to 1 million comparable users and the observed experimental effect remained consistent, the campaign could generate approximately **7,692 additional customers** compared with the PSA/control strategy.

This is an **estimate rather than a guarantee**. It assumes that the observed A/B test effect generalises to the wider rollout population.

---

## 12. Business Recommendation

Based on the analysis:

### Recommendation: Support rollout of the new advertisement

The new advertisement:

- Achieved a higher conversion rate than the PSA campaign
- Produced an estimated lift of approximately 0.76 percentage points
- Showed a statistically significant difference
- Has the potential to generate approximately 7,692 additional customers per 1 million users

However, before a large-scale rollout, the marketing team should also consider:

- Advertising cost
- Revenue generated per conversion
- Customer acquisition cost
- Profit margin
- Whether the effect remains consistent across different customer segments
- Whether the experimental result can be replicated

Statistical significance demonstrates that the observed difference is unlikely to be explained by random sampling variation alone, but it does not automatically mean that the campaign is financially profitable.

---

## 13. Key Findings

| Metric | Result |
|---|---:|
| Ad Conversion Rate | ~2.55% |
| PSA Conversion Rate | ~1.79% |
| Absolute Lift | ~0.76 percentage points |
| Relative Lift | ~43% |
| Statistical Test | Two-proportion Z-test |
| Confidence Level | 95% |
| Statistical Significance | Significant |
| Estimated Additional Customers per 1M Users | ~7,692 |

---

## 14. Final Conclusion

The A/B test provides statistically significant evidence that the new advertisement performed better than the PSA control campaign in terms of conversion rate.

The advertisement group achieved a conversion rate of approximately **2.55%**, compared with approximately **1.79%** for the PSA group. This represents an estimated improvement of approximately **0.76 percentage points**, or around **43% relative lift**.

The 95% confidence interval for the conversion-rate difference was approximately **0.59 to 0.94 percentage points**, remaining entirely above zero. This supports the conclusion that the advertisement had a positive effect on conversions.

If the observed effect generalises to a rollout population of 1 million users, the new advertisement could generate approximately **7,692 additional customers** compared with the PSA campaign.

Overall, this analysis demonstrates how **A/B testing, hypothesis testing, confidence intervals, conversion-rate optimisation, and business impact analysis** can be combined to make data-driven marketing decisions.

---

## 15. Skills Demonstrated

- A/B Testing
- Conversion Rate Optimisation (CRO)
- Statistical Hypothesis Testing
- Two-Proportion Z-Test
- P-value Interpretation
- Confidence Intervals
- Statistical Significance
- Business Impact Analysis
- Python
- Pandas
- NumPy
- SciPy
- Statsmodels
- Matplotlib
- Seaborn
- Data Visualisation
- Business Analytics

---

## 16. Project Structure

```text
Task-10-Marketing-AB-Testing/
│
├── marketing_AB.csv
├── Marketing_AB_Analysis.ipynb
├── README.md

```

---

## 17. Portfolio Summary

**Objective:** Determine whether a new advertisement improved customer conversion compared with a PSA control campaign.

**Method:** Compared conversion rates between treatment and control groups using a two-proportion Z-test and 95% confidence intervals.

**Result:** The advertisement achieved a statistically significant positive lift of approximately 0.76 percentage points.

**Business Impact:** The observed effect corresponds to an estimated **7,692 additional customers per 1 million users**, assuming the experimental effect generalises to the rollout population.
