import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure EndogenousRegulationPackage where
  micrornaGene : Type u
  priMirnaTranscript : Type v
  droshaProcessing : Prop
  exportin5Export : Prop
  matureMirnaLoading : Prop
  targetRegulation : Prop

structure EndogenousRegulationEvidence (E : EndogenousRegulationPackage) where
  droshaProcessingClosed : E.droshaProcessing
  exportin5ExportClosed : E.exportin5Export
  matureMirnaLoadingClosed : E.matureMirnaLoading
  targetRegulationClosed : E.targetRegulation

def EndogenousRegulationClosed (E : EndogenousRegulationPackage) : Prop :=
  E.droshaProcessing ∧ E.exportin5Export ∧ E.matureMirnaLoading ∧ E.targetRegulation

theorem endogenous_regulation_closed_from_evidence (E : EndogenousRegulationPackage)
    (Ev : EndogenousRegulationEvidence E) : EndogenousRegulationClosed E := by
  exact And.intro Ev.droshaProcessingClosed (And.intro Ev.exportin5ExportClosed
    (And.intro Ev.matureMirnaLoadingClosed Ev.targetRegulationClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse