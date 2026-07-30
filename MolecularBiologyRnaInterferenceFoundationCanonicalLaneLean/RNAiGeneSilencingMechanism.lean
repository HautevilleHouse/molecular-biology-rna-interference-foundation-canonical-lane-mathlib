import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInducedSilencingComplex where
  dicerProcessed : Prop
  riscLoading : Prop
  guideStrandSelection : Prop
  mrnaTargetRecognition : Prop
  cleavageOrTranslationalRepression : Prop
  regulatoryLoopClosed : Prop
  dicerProcessedTerm : dicerProcessed
  riscLoadingTerm : riscLoading
  guideStrandSelectionTerm : guideStrandSelection
  mrnaTargetRecognitionTerm : mrnaTargetRecognition
  cleavageOrTranslationalRepressionTerm : cleavageOrTranslationalRepression
  regulatoryLoopClosedTerm : regulatoryLoopClosed

structure RnaInterferenceEvidence (R : RnaInducedSilencingComplex) where
  dicerProcessedClosed : R.dicerProcessed
  riscLoadingClosed : R.riscLoading
  guideStrandSelectionClosed : R.guideStrandSelection
  mrnaTargetRecognitionClosed : R.mrnaTargetRecognition
  cleavageOrTranslationalRepressionClosed : R.cleavageOrTranslationalRepression
  regulatoryLoopClosedClosed : R.regulatoryLoopClosed

def RnaInducedSilencingComplexClosed (R : RnaInducedSilencingComplex) : Prop :=
  R.dicerProcessed ∧ R.riscLoading ∧ R.guideStrandSelection ∧ R.mrnaTargetRecognition ∧
  R.cleavageOrTranslationalRepression ∧ R.regulatoryLoopClosed

theorem rna_induced_silencing_complex_closed_from_evidence
    (R : RnaInducedSilencingComplex) (E : RnaInterferenceEvidence R) :
    RnaInducedSilencingComplexClosed R := by
  exact And.intro E.dicerProcessedClosed
    (And.intro E.riscLoadingClosed
      (And.intro E.guideStrandSelectionClosed
        (And.intro E.mrnaTargetRecognitionClosed
          (And.intro E.cleavageOrTranslationalRepressionClosed
            E.regulatoryLoopClosedClosed))))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
