public class Lasagna {
    public int expectedMinutesInOven() {
        return 40;
    }

    public int remainingMinutesInOven(int minsInOven) {
        return expectedMinutesInOven() - minsInOven;
    }

    public int preparationTimeInMinutes(int numOfLayers) {
        return numOfLayers * 2;
    }

    public int totalTimeInMinutes(int numOfLayers, int minsInOven) {
        int totalPrepTime = preparationTimeInMinutes(numOfLayers);
        return totalPrepTime + minsInOven;
    }
}
