package es.ucm.fdi.porras.model.compID;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserPorraCompId implements Serializable{

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "porra_id")
    private Long porraId;

    @Override
    public int hashCode() {
        return (int)(userId + porraId);
    }

    @Override
    public boolean equals(Object object) {
        if (object instanceof UserPorraCompId) {
            UserPorraCompId otherId = (UserPorraCompId) object;
            return (otherId.userId.equals(this.userId)) && (otherId.porraId.equals(this.porraId));
        }
        return false;
    }
}
