<BpmDashboardItemDefinition> is used to define a Chart Item <BpmDashboardItemDefinition> inside <aBpmDashboardDefinition>.

<hasFixedDates> is used in conjunction with recursion <modifyStartDateOnUpdate>
<modifyStartDateOnUpdate: false, hasFixedDates: true> the chart is always the same.
<modifyStartDateOnUpdate: false, hasFixedDates: false> the start date of the chart is the last Dashboard Instance.
<modifyStartDateOnUpdate: true, hasFixedDates: true> the chart is always the same.
<modifyStartDateOnUpdate: true, hasFixedDates: false> the start date of the chart is the last Dashboard Instance plus the recursion type (1day | 1 week | 1 month | 1 year).