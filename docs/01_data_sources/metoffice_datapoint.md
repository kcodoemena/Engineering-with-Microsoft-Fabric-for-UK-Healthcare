# Met Office DataPoint – 3‑hourly Forecasts

**Access:** Requires API key.  
**Use:** Weather context for operational insights and correlation with prescribing patterns.

## Endpoints
- 3‑hourly forecast per site (include your chosen London site(s)).
- Observations (optional) for validation.

## Load Pattern
- HTTP pipeline fetch → **bronze** → notebook parse → **silver** `dim_weather` & `fact_weather_obs`.

## Notes
- 3‑hourly gives a good balance between granularity and noise for planning.
