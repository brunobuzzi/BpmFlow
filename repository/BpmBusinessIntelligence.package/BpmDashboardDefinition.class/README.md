<BpmDashboardItemDefinition> is used to define a Chart Item <BpmDashboardItemDefinition> inside <aBpmDashboardDefinition>.

<hasFixedDates> is used in conjunction with recursion <modifyStartDateOnUpdate>:

<modifyStartDateOnUpdate: false, hasFixedDates: true> the chart is always the same.

<modifyStartDateOnUpdate: false, hasFixedDates: false> The date range of the chart is increased with each new Dashboard Instance.
The start date is always the same but the end date is increased to the last Dashboard instance.

<modifyStartDateOnUpdate: true, hasFixedDates: true> the chart is always the same.

<modifyStartDateOnUpdate: true, hasFixedDates: false> the start date of the chart is the last Dashboard Instance plus the recursion type (1 day | 1 week | 1 month | 1 year).
The date range remain the same but the start and end date are moved to the next recursion (1 day | 1 week | 1 month | 1 year).