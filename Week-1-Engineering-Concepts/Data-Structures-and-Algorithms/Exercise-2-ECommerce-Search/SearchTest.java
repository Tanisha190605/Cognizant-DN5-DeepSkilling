public class SearchTest {
    public static void main(String[] args) {
        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mouse", "Electronics"),
                new Product(103, "Keyboard", "Electronics"),
                new Product(104, "Monitor", "Electronics"),
                new Product(105, "Printer", "Electronics")
        };
        System.out.println("Linear Search:");
        Product result1 =LinearSearch.search(products, 104);
        if (result1 != null) {
            System.out.println(result1);
        }
        System.out.println();
        System.out.println("Binary Search:");
        Product result2 =BinarySearch.search(products, 104);
        if (result2 != null) {
            System.out.println(result2);
        }
    }
}