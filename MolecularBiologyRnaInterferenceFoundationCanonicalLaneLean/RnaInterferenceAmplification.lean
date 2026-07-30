import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferenceAmplification where
  rdrpActivity : Prop
  secondarySirnaGeneration : Prop
  transitiveSilencing : Prop
  systemicSpread : Prop
  rdrpActivityTerm : rdrpActivity
  secondarySirnaGenerationTerm : secondarySirnaGeneration
  transitiveSilencingTerm : transitiveSilencing
  systemicSpreadTerm : systemicSpread

structure AmplificationEvidence (A : RnaInterferenceAmplification) where
  rdrpActivityClosed : A.rdrpActivity
  secondarySirnaGenerationClosed : A.secondarySirnaGeneration
  transitiveSilencingClosed : A.transitiveSilencing
  systemicSpreadClosed : A.systemicSpread

def RnaInterferenceAmplificationClosed (A : RnaInterferenceAmplification) : Prop :=
  A.rdrpActivity ∧ A.secondarySirnaGeneration ∧ A.transitiveSilencing ∧ A.systemicSpread

theorem rna_interference_amplification_closed_from_evidence
    (A : RnaInterferenceAmplification) (E : AmplificationEvidence A) :
    RnaInterferenceAmplificationClosed A := by
  exact And.intro E.rdrpActivityClosed
    (And.intro E.secondarySirnaGenerationClosed
      (And.intro E.transitiveSilencingClosed E.systemicSpreadClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
