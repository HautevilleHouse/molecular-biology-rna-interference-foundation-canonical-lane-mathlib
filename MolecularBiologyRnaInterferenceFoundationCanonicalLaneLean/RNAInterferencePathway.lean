import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferencePathwayPackage where
  dicerEnzyme : Type u
  riscComplex : Type v
  sirnaMolecule : Type w
  targetMrna : Type x
  cleavageEvent : Prop
  translationSuppression : Prop
  pathwayActivation : Prop

structure RnaInterferencePathwayEvidence (R : RnaInterferencePathwayPackage) where
  cleavageEventClosed : R.cleavageEvent
  translationSuppressionClosed : R.translationSuppression
  pathwayActivationClosed : R.pathwayActivation

def RnaInterferencePathwayClosed (R : RnaInterferencePathwayPackage) : Prop :=
  R.cleavageEvent ∧ R.translationSuppression ∧ R.pathwayActivation

theorem rna_interference_pathway_closed_from_evidence (R : RnaInterferencePathwayPackage)
    (E : RnaInterferencePathwayEvidence R) : RnaInterferencePathwayClosed R := by
  exact And.intro E.cleavageEventClosed (And.intro E.translationSuppressionClosed E.pathwayActivationClosed)

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse