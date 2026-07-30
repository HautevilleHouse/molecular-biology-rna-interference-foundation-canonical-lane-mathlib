import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.RNAInterferenceFoundationObjects

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure SilencingComplexPackage {O : RnaInterferenceAdmittedObject} where
  rnaInducedSilencingComplex : Prop
  dicerEnzymePresent : Prop
  argonauteLoaded : Prop
  passengerStrandDegraded : Prop
  guideStrandRetained : Prop

structure SilencingComplexEvidence {O : RnaInterferenceAdmittedObject}
    (S : SilencingComplexPackage O) where
  rnaInducedSilencingComplexClosed : S.rnaInducedSilencingComplex
  dicerEnzymePresentClosed : S.dicerEnzymePresent
  argonauteLoadedClosed : S.argonauteLoaded
  passengerStrandDegradedClosed : S.passengerStrandDegraded
  guideStrandRetainedClosed : S.guideStrandRetained

def SilencingComplexClosed {O : RnaInterferenceAdmittedObject}
    (S : SilencingComplexPackage O) : Prop :=
  S.rnaInducedSilencingComplex ∧ S.dicerEnzymePresent ∧
  S.argonauteLoaded ∧ S.passengerStrandDegraded ∧ S.guideStrandRetained

theorem silencing_complex_closed_from_evidence
    {O : RnaInterferenceAdmittedObject} (S : SilencingComplexPackage O)
    (E : SilencingComplexEvidence S) : SilencingComplexClosed S := by
  exact And.intro E.rnaInducedSilencingComplexClosed
    (And.intro E.dicerEnzymePresentClosed
      (And.intro E.argonauteLoadedClosed
        (And.intro E.passengerStrandDegradedClosed E.guideStrandRetainedClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse