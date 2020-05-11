package otis.architect.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import otis.architect.app.domain.Authority;


/**
 * Created by Rubanov.Maksim on 04.12.2019.
 */

@Repository
public interface AuthorityRepository extends JpaRepository<Authority, String> {

}
