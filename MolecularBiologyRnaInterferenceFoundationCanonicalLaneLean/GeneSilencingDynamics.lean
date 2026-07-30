import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure GeneSilencingDynamicsPackage where
  sirnaConcentration : Type u
  mrnaDegradationRate : Type v
  proteinProductionRate : Type w
  silencingEfficiency : Prop
  temporalDecay : Prop
  doseResponse : Prop

structure GeneSilencingDynamicsEvidence (G : GeneSilencingDynamicsPackage) where
  silencingEfficiencyClosed : G.silencingEfficiency
  temporalDecayClosed : G.temporalDecay
  doseResponseClosed : G.doseResponse

def GeneSilencingDynamicsClosed (G : GeneSilencingDynamicsPackage) : Prop :=
  G.silencingEfficiency ∧ G.temporalDecay ∧ G.doseResponse

theorem gene_silencing_dynamics_closed_from_evidence (G : GeneSilencingDynamicsPackage)
    (E : GeneSilencingDynamicsEvidence G) : GeneSilencingDynamicsClosed G := by
  exact And.intro E.silencingEfficiencyClosed (And.intro E.temporalDecayClosed E.doseResponseClosed)

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse