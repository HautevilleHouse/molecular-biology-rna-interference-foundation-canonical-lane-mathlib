import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaInterferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse