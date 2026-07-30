import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure GeneSilencingEfficacyPackage where
  sirnaDesignOptimal : Prop
  targetAccessibility : Prop
  riscTurnoverRate : Prop
  silencingDuration : Prop
  offTargetMinimization : Prop

structure GeneSilencingEfficacyEvidence (S : GeneSilencingEfficacyPackage) where
  sirnaDesignOptimalClosed : S.sirnaDesignOptimal
  targetAccessibilityClosed : S.targetAccessibility
  riscTurnoverRateClosed : S.riscTurnoverRate
  silencingDurationClosed : S.silencingDuration
  offTargetMinimizationClosed : S.offTargetMinimization

def GeneSilencingEfficacyClosed (S : GeneSilencingEfficacyPackage) : Prop :=
  S.sirnaDesignOptimal ∧ S.targetAccessibility ∧ S.riscTurnoverRate ∧ S.silencingDuration ∧ S.offTargetMinimization

theorem gene_silencing_efficacy_closed_from_evidence (S : GeneSilencingEfficacyPackage)
    (E : GeneSilencingEfficacyEvidence S) : GeneSilencingEfficacyClosed S := by
  exact And.intro E.sirnaDesignOptimalClosed
    (And.intro E.targetAccessibilityClosed
      (And.intro E.riscTurnoverRateClosed
        (And.intro E.silencingDurationClosed E.offTargetMinimizationClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse