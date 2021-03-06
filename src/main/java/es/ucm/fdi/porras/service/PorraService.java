package es.ucm.fdi.porras.service;


import es.ucm.fdi.porras.model.Porra;
import es.ucm.fdi.porras.model.dto.PorraForm;
import es.ucm.fdi.porras.repository.PorraRepository;
import es.ucm.fdi.porras.repository.UserRepository;
import es.ucm.fdi.porras.utils.exceptions.UserAlreadyExistException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service("porraService")
@Transactional
@Slf4j
public class PorraService {

    private UserRepository userRepository;

    private PorraRepository porraRepository;

    public PorraService(UserRepository userRepository, PorraRepository porraRepository) {
        this.userRepository = userRepository;
        this.porraRepository = porraRepository;
    }

    public Porra getPorraByName(String title){
        log.debug("Getting porra by title {}", title);
        return porraRepository.findOneByTitle(title);

    }

    public Porra registerNewPorra(PorraForm porraForm) throws UserAlreadyExistException {

        final Porra porra = new Porra();
        porra.setTitle(porraForm.getTituloPorra());
        porra.setFinishTime(new Date(1000000));
        porra.setCreator(null);
        porra.setType("MATCH");
        porraRepository.save(porra);
        return porra;
    }

}
