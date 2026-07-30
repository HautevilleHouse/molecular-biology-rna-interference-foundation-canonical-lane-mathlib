import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RNAiGeneRegulationPackage where
  micrornaBiogenesis : Prop
  targetMrnaCleavage : Prop
  transcriptionalGeneSilencing : Prop
  epigeneticRegulation : Prop

structure RNAiGeneRegulationEvidence (P : RNAiGeneRegulationPackage) where
  micrornaBiogenesisClosed : P.micrornaBiogenesis
  targetMrnaCleavageClosed : P.targetMrnaCleavage
  transcriptionalGeneSilencingClosed : P.transcriptionalGeneSilencing
  epigeneticRegulationClosed : P.epigeneticRegulation

def RNAiGeneRegulationClosed (P : RNAiGeneRegulationPackage) : Prop :=
  P.micrornaBiogenesis ∧ P.targetMrnaCleavage ∧ P.transcriptionalGeneSilencing ∧ P.epigeneticRegulation

theorem rnai_gene_regulation_closed_from_evidence
    (P : RNAiGeneRegulationPackage) (E : RNAiGeneRegulationEvidence P) :
    RNAiGeneRegulationClosed P := by
  exact And.intro E.micrornaBiogenesisClosed
    (And.intro E.targetMrnaCleavageClosed
      (And.intro E.transcriptionalGeneSilencingClosed E.epigeneticRegulationClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
