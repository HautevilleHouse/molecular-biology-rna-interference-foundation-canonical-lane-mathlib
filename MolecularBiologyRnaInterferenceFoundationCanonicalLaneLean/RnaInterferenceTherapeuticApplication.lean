import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferenceTherapeuticApplication where
  targetMrnaIdentification : Prop
  sirnaDesign : Prop
  deliveryVehicle : Prop
  offTargetMinimization : Prop
  immuneStimulationAvoidance : Prop
  therapeuticEfficacy : Prop
  targetMrnaIdentificationTerm : targetMrnaIdentification
  sirnaDesignTerm : sirnaDesign
  deliveryVehicleTerm : deliveryVehicle
  offTargetMinimizationTerm : offTargetMinimization
  immuneStimulationAvoidanceTerm : immuneStimulationAvoidance
  therapeuticEfficacyTerm : therapeuticEfficacy

structure TherapeuticEvidence (T : RnaInterferenceTherapeuticApplication) where
  targetMrnaIdentificationClosed : T.targetMrnaIdentification
  sirnaDesignClosed : T.sirnaDesign
  deliveryVehicleClosed : T.deliveryVehicle
  offTargetMinimizationClosed : T.offTargetMinimization
  immuneStimulationAvoidanceClosed : T.immuneStimulationAvoidance
  therapeuticEfficacyClosed : T.therapeuticEfficacy

def TherapeuticApplicationClosed (T : RnaInterferenceTherapeuticApplication) : Prop :=
  T.targetMrnaIdentification ∧ T.sirnaDesign ∧ T.deliveryVehicle ∧
  T.offTargetMinimization ∧ T.immuneStimulationAvoidance ∧ T.therapeuticEfficacy

theorem therapeutic_application_closed_from_evidence
    (T : RnaInterferenceTherapeuticApplication) (E : TherapeuticEvidence T) :
    TherapeuticApplicationClosed T := by
  exact And.intro E.targetMrnaIdentificationClosed
    (And.intro E.sirnaDesignClosed
      (And.intro E.deliveryVehicleClosed
        (And.intro E.offTargetMinimizationClosed
          (And.intro E.immuneStimulationAvoidanceClosed
            E.therapeuticEfficacyClosed))))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
