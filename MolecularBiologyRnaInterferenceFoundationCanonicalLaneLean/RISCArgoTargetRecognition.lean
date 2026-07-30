import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RISCArgoTargetRecognitionPackage where
  seedMatch : Prop
  targetAccessibility : Prop
  mrnaBindingAffinity : Prop
  translationalInhibition : Prop

structure RISCArgoTargetRecognitionEvidence (P : RISCArgoTargetRecognitionPackage) where
  seedMatchClosed : P.seedMatch
  targetAccessibilityClosed : P.targetAccessibility
  mrnaBindingAffinityClosed : P.mrnaBindingAffinity
  translationalInhibitionClosed : P.translationalInhibition

def RISCArgoTargetRecognitionClosed (P : RISCArgoTargetRecognitionPackage) : Prop :=
  P.seedMatch ∧ P.targetAccessibility ∧ P.mrnaBindingAffinity ∧ P.translationalInhibition

theorem risc_argo_target_recognition_closed_from_evidence
    (P : RISCArgoTargetRecognitionPackage) (E : RISCArgoTargetRecognitionEvidence P) :
    RISCArgoTargetRecognitionClosed P := by
  exact And.intro E.seedMatchClosed
    (And.intro E.targetAccessibilityClosed
      (And.intro E.mrnaBindingAffinityClosed E.translationalInhibitionClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
