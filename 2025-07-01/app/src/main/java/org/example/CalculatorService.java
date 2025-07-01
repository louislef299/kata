import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
class CalculatorService {
    private final Add add;

    CalculatorService(Add add) {
        this.add = add;
    }

    int addNumbers(String nums) {
        add.setNums(nums);
        return add.getResult();
    }
}
