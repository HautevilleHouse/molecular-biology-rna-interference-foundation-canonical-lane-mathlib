import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure SmallInterferingRnaPathway where
  exogenousRnaTrigger : Prop
  dicerProcessingSi : Prop
  riscLoadingSi : Prop
  passengerStrandDegradation : Prop
  guideStrandRecognitionSi : Prop
  endonucleolyticCleavage : Prop
  interferenceSilencing : Prop
  exogenousRnaTriggerTerm : exogenousRnaTrigger
  dicerProcessingSiTerm : dicerProcessingSi
  riscLoadingSiTerm : riscLoadingSi
  passengerStrandDegradationTerm : passengerStrandDegradation
  guideStrandRecognitionSiTerm : guideStrandRecognitionSi
  endonucleolyticCleavageTerm : endonucleolyticCleavage
  interferenceSilencingTerm : interferenceSilencing

structure SiRnaPathwayEvidence (S : SmallInterferingRnaPathway) where
  exogenousRnaTriggerClosed : S.exogenousRnaTrigger
  dicerProcessingSiClosed : S.dicerProcessingSi
  riscLoadingSiClosed : S.riscLoadingSi
  passengerStrandDegradationClosed : S.passengerStrandDegradation
  guideStrandRecognitionSiClosed : S.guideStrandRecognitionSi
  endonucleolyticCleavageClosed : S.endonucleolyticCleavage
  interferenceSilencingClosed : S.interferenceSilencing

def SmallInterferingRnaPathwayClosed (S : SmallInterferingRnaPathway) : Prop :=
  S.exogenousRnaTrigger ∧ S.dicerProcessingSi ∧ S.riscLoadingSi ∧
  S.passengerStrandDegradation ∧ S.guideStrandRecognitionSi ∧
  S.endonucleolyticCleavage ∧ S.interferenceSilencing

theorem small_interfering_rna_pathway_closed_from_evidence
    (S : SmallInterferingRnaPathway) (E : SiRnaPathwayEvidence S) :
    SmallInterferingRnaPathwayClosed S := by
  exact And.intro E.exogenousRnaTriggerClosed
    (And.intro E.dicerProcessingSiClosed
      (And.intro E.riscLoadingSiClosed
        (And.intro E.passengerStrandDegradationClosed
          (And.intro E.guideStrandRecognitionSiClosed
            (And.intro E.endonucleolyticCleavageClosed
              E.interferenceSilencingClosed)))))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
