import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure SmallRegulatoryRnaBiogenesisPackage where
  mirnaPrimaryTranscript : Prop
  droshaProcessing : Prop
  exportin5Transport : Prop
  dicerMaturation : Prop
  strandSelection : Prop

structure SmallRegulatoryRnaBiogenesisEvidence (B : SmallRegulatoryRnaBiogenesisPackage) where
  mirnaPrimaryTranscriptClosed : B.mirnaPrimaryTranscript
  droshaProcessingClosed : B.droshaProcessing
  exportin5TransportClosed : B.exportin5Transport
  dicerMaturationClosed : B.dicerMaturation
  strandSelectionClosed : B.strandSelection

def SmallRegulatoryRnaBiogenesisClosed (B : SmallRegulatoryRnaBiogenesisPackage) : Prop :=
  B.mirnaPrimaryTranscript ∧ B.droshaProcessing ∧ B.exportin5Transport ∧ B.dicerMaturation ∧ B.strandSelection

theorem small_regulatory_rna_biogenesis_closed_from_evidence (B : SmallRegulatoryRnaBiogenesisPackage)
    (E : SmallRegulatoryRnaBiogenesisEvidence B) : SmallRegulatoryRnaBiogenesisClosed B := by
  exact And.intro E.mirnaPrimaryTranscriptClosed
    (And.intro E.droshaProcessingClosed
      (And.intro E.exportin5TransportClosed
        (And.intro E.dicerMaturationClosed E.strandSelectionClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse