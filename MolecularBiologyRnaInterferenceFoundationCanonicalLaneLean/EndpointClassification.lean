import canonicalLaneMathlib.AdmissibleClass

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure EndpointClassificationPackage where
  targetMolecule : Type u
  silencingMode : String
  systemOutline : Prop
  conservedMechanism : Prop
  phenotypeObserved : Prop

structure EndpointClassificationEvidence (Epkg : EndpointClassificationPackage) where
  systemOutlineClosed : Epkg.systemOutline
  conservedMechanismClosed : Epkg.conservedMechanism
  phenotypeObservedClosed : Epkg.phenotypeObserved

def EndpointClassificationClosed (Epkg : EndpointClassificationPackage) : Prop :=
  Epkg.systemOutline ∧ Epkg.conservedMechanism ∧ Epkg.phenotypeObserved

theorem endpoint_classification_closed_from_evidence
    (Epkg : EndpointClassificationPackage) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.systemOutlineClosed
    (And.intro E.conservedMechanismClosed E.phenotypeObservedClosed)

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse