import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RNASilencingInitiationPackage where
  dicerRecognition : Prop
  riscLoading : Prop
  guideStrandSelection : Prop
  passengerStrandDegradation : Prop

structure RNASilencingInitiationEvidence (P : RNASilencingInitiationPackage) where
  dicerRecognitionClosed : P.dicerRecognition
  riscLoadingClosed : P.riscLoading
  guideStrandSelectionClosed : P.guideStrandSelection
  passengerStrandDegradationClosed : P.passengerStrandDegradation

def RNASilencingInitiationClosed (P : RNASilencingInitiationPackage) : Prop :=
  P.dicerRecognition ∧ P.riscLoading ∧ P.guideStrandSelection ∧ P.passengerStrandDegradation

theorem rna_silencing_initiation_closed_from_evidence
    (P : RNASilencingInitiationPackage) (E : RNASilencingInitiationEvidence P) :
    RNASilencingInitiationClosed P := by
  exact And.intro E.dicerRecognitionClosed
    (And.intro E.riscLoadingClosed
      (And.intro E.guideStrandSelectionClosed E.passengerStrandDegradationClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
