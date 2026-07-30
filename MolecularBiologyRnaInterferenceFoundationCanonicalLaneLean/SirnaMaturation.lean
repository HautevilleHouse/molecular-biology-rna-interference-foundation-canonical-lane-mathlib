import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure SirnaMaturationPackage where
  precursorRna : Type u
  dicerProcessing : Prop
  strandSelection : Prop
  guideStrandLoading : Prop
  passengerStrandDegradation : Prop

structure SirnaMaturationEvidence (S : SirnaMaturationPackage) where
  dicerProcessingClosed : S.dicerProcessing
  strandSelectionClosed : S.strandSelection
  guideStrandLoadingClosed : S.guideStrandLoading
  passengerStrandDegradationClosed : S.passengerStrandDegradation

def SirnaMaturationClosed (S : SirnaMaturationPackage) : Prop :=
  S.dicerProcessing ∧ S.strandSelection ∧ S.guideStrandLoading ∧ S.passengerStrandDegradation

theorem sirna_maturation_closed_from_evidence (S : SirnaMaturationPackage)
    (E : SirnaMaturationEvidence S) : SirnaMaturationClosed S := by
  exact And.intro E.dicerProcessingClosed (And.intro E.strandSelectionClosed
    (And.intro E.guideStrandLoadingClosed E.passengerStrandDegradationClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse