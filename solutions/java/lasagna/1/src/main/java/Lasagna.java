public class Lasagna {
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        return 40;
    }

    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int minsInOven) {
        return expectedMinutesInOven() - minsInOven;
    }

    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int numOfLayers) {
        return numOfLayers * 2;
    }

    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int numOfLayers, int minsInOven) {
        int totalPrepTime = preparationTimeInMinutes(numOfLayers);
        return totalPrepTime + minsInOven;
    }
}
