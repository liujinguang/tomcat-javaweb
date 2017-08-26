package utils;

/**
 * This class simulates the retrieval of world records from the FINA database
 * 
 * @author bob
 *
 */
public class WorldRecords {
	public static Object[][] getRecentRecords() {
		Object[][] records = {
				{"Event", "Name", "Time"},
				{"400 IM", "Michael Phelps", "4:08.25"},
				{"100 Br", "Lindsay Hall", "1:05.08"},
				{"200 IM", "Katie Hoff", "2:09.71"}
		};
		
		return records;
	}
}
