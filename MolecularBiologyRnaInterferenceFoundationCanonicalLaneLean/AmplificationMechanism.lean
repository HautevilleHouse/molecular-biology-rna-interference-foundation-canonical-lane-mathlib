import canonicalLaneMathlib.AdmissibleClass

/-!
# Amplification Mechanism Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure AmplificationMechanismPackage where
  rdrpActivity : Prop
  secondarySirnaGeneration : Prop
  transitiveSilencing : Prop
  signalAmplification : Prop

structure AmplificationMechanismEvidence (A : AmplificationMechanismPackage) where
  rdrpActivityClosed : A.rdrpActivity
  secondarySirnaGenerationClosed : A.secondarySirnaGeneration
  transitiveSilencingClosed : A.transitiveSilencing
  signalAmplificationClosed : A.signalAmplification

def AmplificationMechanismClosed (A : AmplificationMechanismPackage) : Prop :=
  A.rdrpActivity ∧ A.secondarySirnaGeneration ∧ A.transitiveSilencing ∧ A.signalAmplification

theorem amplification_mechanism_closed_from_evidence
    (A : AmplificationMechanismPackage) (E : AmplificationMechanismEvidence A) :
    AmplificationMechanismClosed A := by
  exact And.intro E.rdrpActivityClosed
    (And.intro E.secondarySirnaGenerationClosed
      (And.intro E.transitiveSilencingClosed E.signalAmplificationClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse