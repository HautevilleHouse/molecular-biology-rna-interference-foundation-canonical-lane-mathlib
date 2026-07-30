import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure MicrornaBiogenesisWhere
  priMirnaTranscribed : Prop
  microprocessorCleavage : Prop
  preMirnaExportin : Prop
  dicerProcessingMirna : Prop
  mirnaRiscLoading : Prop
  translationalInhibition : Prop
  mrnaDeadEnylation : Prop
  priMirnaTranscribedTerm : priMirnaTranscribed
  microprocessorCleavageTerm : microprocessorCleavage
  preMirnaExportinTerm : preMirnaExportin
  dicerProcessingMirnaTerm : dicerProcessingMirna
  mirnaRiscLoadingTerm : mirnaRiscLoading
  translationalInhibitionTerm : translationalInhibition
  mrnaDeadEnylationTerm : mrnaDeadEnylation

structure MicrornaBiogenesisEvidence (M : MicrornaBiogenesisWhere) where
  priMirnaTranscribedClosed : M.priMirnaTranscribed
  microprocessorCleavageClosed : M.microprocessorCleavage
  preMirnaExportinClosed : M.preMirnaExportin
  dicerProcessingMirnaClosed : M.dicerProcessingMirna
  mirnaRiscLoadingClosed : M.mirnaRiscLoading
  translationalInhibitionClosed : M.translationalInhibition
  mrnaDeadEnylationClosed : M.mrnaDeadEnylation

def MicrornaBiogenesisClosed (M : MicrornaBiogenesisWhere) : Prop :=
  M.priMirnaTranscribed ∧ M.microprocessorCleavage ∧ M.preMirnaExportin ∧
  M.dicerProcessingMirna ∧ M.mirnaRiscLoading ∧ M.translationalInhibition ∧
  M.mrnaDeadEnylation

theorem microrna_biogenesis_closed_from_evidence
    (M : MicrornaBiogenesisWhere) (E : MicrornaBiogenesisEvidence M) :
    MicrornaBiogenesisClosed M := by
  exact And.intro E.priMirnaTranscribedClosed
    (And.intro E.microprocessorCleavageClosed
      (And.intro E.preMirnaExportinClosed
        (And.intro E.dicerProcessingMirnaClosed
          (And.intro E.mirnaRiscLoadingClosed
            (And.intro E.translationalInhibitionClosed
              E.mrnaDeadEnylationClosed)))))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
