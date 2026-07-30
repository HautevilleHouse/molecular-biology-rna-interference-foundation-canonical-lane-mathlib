import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RNAiAmplificationAndSpreadPackage where
  rdrpActivity : Prop
  secondarySirnaBiosynthesis : Prop
  systemicSpread : Prop
  amplificationCycle : Prop

structure RNAiAmplificationAndSpreadEvidence (P : RNAiAmplificationAndSpreadPackage) where
  rdrpActivityClosed : P.rdrpActivity
  secondarySirnaBiosynthesisClosed : P.secondarySirnaBiosynthesis
  systemicSpreadClosed : P.systemicSpread
  amplificationCycleClosed : P.amplificationCycle

def RNAiAmplificationAndSpreadClosed (P : RNAiAmplificationAndSpreadPackage) : Prop :=
  P.rdrpActivity ∧ P.secondarySirnaBiosynthesis ∧ P.systemicSpread ∧ P.amplificationCycle

theorem rnai_amplification_and_spread_closed_from_evidence
    (P : RNAiAmplificationAndSpreadPackage) (E : RNAiAmplificationAndSpreadEvidence P) :
    RNAiAmplificationAndSpreadClosed P := by
  exact And.intro E.rdrpActivityClosed
    (And.intro E.secondarySirnaBiosynthesisClosed
      (And.intro E.systemicSpreadClosed E.amplificationCycleClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse
