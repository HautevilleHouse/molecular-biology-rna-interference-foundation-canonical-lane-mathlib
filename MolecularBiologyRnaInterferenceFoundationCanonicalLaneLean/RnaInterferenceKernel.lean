import canonicalLaneMathlib.AdmissibleClass

/-!
# Rna Interference Kernel Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferenceKernelPackage where
  dicerProcessing : Prop
  riscLoading : Prop
  targetRecognition : Prop
  cleavageEfficiency : Prop

structure RnaInterferenceKernelEvidence (R : RnaInterferenceKernelPackage) where
  dicerProcessingClosed : R.dicerProcessing
  riscLoadingClosed : R.riscLoading
  targetRecognitionClosed : R.targetRecognition
  cleavageEfficiencyClosed : R.cleavageEfficiency

def RnaInterferenceKernelClosed (R : RnaInterferenceKernelPackage) : Prop :=
  R.dicerProcessing ∧ R.riscLoading ∧ R.targetRecognition ∧ R.cleavageEfficiency

theorem rna_interference_kernel_closed_from_evidence
    (R : RnaInterferenceKernelPackage) (E : RnaInterferenceKernelEvidence R) :
    RnaInterferenceKernelClosed R := by
  exact And.intro E.dicerProcessingClosed
    (And.intro E.riscLoadingClosed
      (And.intro E.targetRecognitionClosed E.cleavageEfficiencyClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse