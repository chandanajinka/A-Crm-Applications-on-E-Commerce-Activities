public class grandsum {
public static Decimal sumOfGrand() {
        // Query to get all accounts and their annual revenue
        List<AggregateResult> results = [SELECT SUM(AnnualRevenue) grandSum
                                         FROM Account];
        
        // Initialize the grand sum to 0
        Decimal grandSum = 0;
        
        // Iterate over the aggregated results
        for (AggregateResult result : results) {
            grandSum += (Decimal)result.get('grandSum');
        }
        
        return grandSum;
    }
    
}