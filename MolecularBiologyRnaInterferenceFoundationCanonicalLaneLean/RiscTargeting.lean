import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RiscTargetingPackage where
  riscComplex : Type u
  guideSirna : Type v
  targetMrna : Type w
  complementaryBasePairing : Prop
  cleavageCompetence : Prop
  slicingActivity : Prop

structure RiscTargetingEvidence (R : RiscTargetingPackage) where
  complementaryBasePairingClosed : R.complementaryBasePairing
  cleavageCompetenceClosed : R.cleavageCompetence
  slicingActivityClosed : R.slicingActivity

def RiscTargetingClosed (R : RiscTargetingPackage) : Prop :=
  R.complementaryBasePairing ∧ R.cleavageCompetence ∧ R.slicingActivity

theorem risc_targeting_closed_from_evidence (R : RiscTargetingPackage)
    (E : RiscTargetingEvidence R) : RiscTargetingClosed R := by
  exact And.intro E.complementaryBasePairingClosed (And.intro E.cleavageCompetenceClosed E.slicingActivityClosed)

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse