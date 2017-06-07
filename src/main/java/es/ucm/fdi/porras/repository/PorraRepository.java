package es.ucm.fdi.porras.repository;


import es.ucm.fdi.porras.model.Porra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PorraRepository extends JpaRepository<Porra, Long>{

    Porra findOneByTitle(String title);

    List<Porra> findAllByCreatorId(@Param("creator_id") Long creatorId);
    //List<Porra> findAllByCreatorId(@Param("creator_id") Long creatorId);
}
