package fr.diginamic.gestit_back.service;

import fr.diginamic.gestit_back.dto.ReservationVehiculeServiceDto;
import fr.diginamic.gestit_back.entites.ReservationVehiculeService;
import fr.diginamic.gestit_back.repository.ReservationVehiculeServiceRepository;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
@Data
@AllArgsConstructor
public class ReservationVehiculeServiceService {

    private ReservationVehiculeServiceRepository reservationVehiculeServiceRepository;
    private UtilisateurService utilisateurService;
    private VehiculeServiceService vehiculeServiceService;

    public List<ReservationVehiculeService> listeReservationVehiculeService(){
        return this.reservationVehiculeServiceRepository.findAll();
    }

    public void creerReservationVehiculeService(ReservationVehiculeServiceDto res){
        reservationVehiculeServiceRepository.save(new ReservationVehiculeService(this.utilisateurService.trouverParId(res.userId()),this.vehiculeServiceService.trouverParId(res.vehiculeServiceId()), res.dateHeureDepart(), res.dateHeureRetour()));
    }


    public void modifierReservationVehiculeService(ReservationVehiculeServiceDto newRes, Integer oldResId){
        ReservationVehiculeService reservationVSaModifier = reservationVehiculeServiceRepository.findById(oldResId).orElseThrow();
        reservationVSaModifier.setCollaborateur(this.utilisateurService.trouverParId(newRes.userId()));
        reservationVSaModifier.setVehiculeService(this.vehiculeServiceService.trouverParId(newRes.vehiculeServiceId()));
        reservationVSaModifier.setDateHeureDepart(newRes.dateHeureDepart());
        reservationVSaModifier.setDateHeureRetour(newRes.dateHeureRetour());
        reservationVehiculeServiceRepository.save(reservationVSaModifier);
    }

    public void supprimerReservationVehiculeService(Integer resId, ReservationVehiculeServiceDto resDto){
        ReservationVehiculeService reservationVSaSupprimer = reservationVehiculeServiceRepository.findById(resId).orElseThrow();
        reservationVehiculeServiceRepository.deleteReservationVehiculeServiceById(reservationVSaSupprimer.getId());
    }

}
