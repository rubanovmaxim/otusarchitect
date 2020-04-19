package otis.architect.app.rest;


import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import otis.architect.app.enums.Status;

import java.util.Collections;
import java.util.Map;

@RestController
public class HealthController {

    @GetMapping(value = "health", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Map> health() {
        return ResponseEntity.ok(
                Collections.singletonMap("status", Status.OK)
        );
    }

}
