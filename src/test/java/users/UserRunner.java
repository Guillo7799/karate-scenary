package users;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

public class UserRunner {
    @Karate.Test
    Karate user(){
        return Karate.run().relativeTo(getClass());
    }

}
