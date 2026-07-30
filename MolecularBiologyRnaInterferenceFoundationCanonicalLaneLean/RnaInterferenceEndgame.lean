import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.RNAInterferenceFoundationObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaInterferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedRnaInterferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_interference_endgame (A : AdmissibleClass) :
    ConstrainedRnaInterferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse